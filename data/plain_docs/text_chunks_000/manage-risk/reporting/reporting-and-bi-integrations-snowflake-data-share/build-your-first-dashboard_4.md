This query returns open Snyk Code issues backlog counters, distributed by severity and grouped by Snyk Organization.
The results are based on:

Open issues that were found by Snyk Code
Noise cancelling:
Only issues of monitored projects
No deleted issues

sql
SELECT o.DISPLAY_NAME AS organization_display_name, -- Update based on the desired aggregation
        COUNT_IF(ISSUE_SEVERITY='High') AS high_issues,
        COUNT_IF(ISSUE_SEVERITY='Medium') AS medium_issues,
        COUNT_IF(ISSUE_SEVERITY='Low') AS low_issues
FROM SNYK.SNYK.ISSUES__V_1_0 i
     INNER JOIN SNYK.SNYK.PROJECTS__V_1_0 p ON i.PROJECT_PUBLIC_ID = p.PUBLIC_ID
     INNER JOIN SNYK.SNYK.ORGS__V_1_0 o ON i.ORG_PUBLIC_ID = o.PUBLIC_ID
WHERE p.IS_MONITORED = TRUE                     -- include only monitored projects
     AND i.DELETED_AT IS NULL                   -- remove deleted issues
     AND ISSUE_STATUS = 'Open'                  -- include only open issues
     AND i.PRODUCT_NAME = 'Snyk Code'           -- include only Snyk Open Source
GROUP BY o.DISPLAY_NAME                         -- Update based on the desired aggregation
ORDER BY high_issues DESC, 
         medium_issues DESC, 
         low_issues DESC;                     -- Update based on the desired order
