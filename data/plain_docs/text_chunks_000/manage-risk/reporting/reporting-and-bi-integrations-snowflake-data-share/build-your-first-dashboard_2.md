This query returns open SCA issues backlog counters, distributed by fixability and grouped by Snyk Organization.
The results are based on:

Open high or critical issues that were found by Snyk Open Source (SCA)
Noise cancelling:
Only issues of monitored projects
No deleted issues

sql
SELECT  o.DISPLAY_NAME AS organization_display_name, -- Update based on the desired aggregation
        COUNT_IF(ISSUE_SEVERITY='Critical' AND COMPUTED_FIXABILITY='Fixable') AS fixable_critical_issues,
        COUNT_IF(ISSUE_SEVERITY='High'AND COMPUTED_FIXABILITY='Fixable') AS fixable_high_issues,
        COUNT_IF(ISSUE_SEVERITY='Critical' AND COMPUTED_FIXABILITY='Partially Fixable') AS partially_fixable_critical_issues,
        COUNT_IF(ISSUE_SEVERITY='High'AND COMPUTED_FIXABILITY='Partially Fixable') AS partially_fixable_high_issues,
        COUNT_IF(ISSUE_SEVERITY='Critical' AND COMPUTED_FIXABILITY='No Fix Supported') AS unfixable_critical_issues,
        COUNT_IF(ISSUE_SEVERITY='High'AND COMPUTED_FIXABILITY='No Fix Supported') AS unfixable_high_issues
FROM SNYK.SNYK.ISSUES__V_1_0 i
     INNER JOIN SNYK.SNYK.PROJECTS__V_1_0 p ON i.PROJECT_PUBLIC_ID = p.PUBLIC_ID
     INNER JOIN SNYK.SNYK.ORGS__V_1_0 o ON i.ORG_PUBLIC_ID = o.PUBLIC_ID
WHERE p.IS_MONITORED = TRUE                      -- include only monitored projects
     AND i.DELETED_AT IS NULL                    -- remove deleted issues
     AND ISSUE_STATUS = 'Open'                   -- include only open issues
     AND i.PRODUCT_NAME = 'Snyk Open Source'     -- include only Snyk Open Source
GROUP BY o.DISPLAY_NAME                          -- Update based on the desired aggregation
ORDER BY fixable_critical_issues DESC, fixable_high_issues DESC, 
    partially_fixable_critical_issues DESC, partially_fixable_high_issues DESC; -- Update based on the desired order
