The query below returns the average aging (in days) of critical issues per Snyk organization.\
The results are based on:

Open critical issues
Noise cancelling:
Only issues of monitored projects
No deleted issues

sql
SELECT o.DISPLAY_NAME AS organization_display_name, 
    ROUND(AVG(
    CASE
        WHEN LAST_INTRODUCED IS NULL THEN DATEDIFF('DAY', TO_DATE(FIRST_INTRODUCED), CURRENT_DATE)
        WHEN TO_DATE(FIRST_INTRODUCED) <= TO_DATE(LAST_INTRODUCED) THEN DATEDIFF('DAY', TO_DATE(LAST_INTRODUCED), CURRENT_DATE)
    END),0) AS open_issues_aging
FROM SNYK.SNYK.ISSUES__V_1_0 i
     INNER JOIN SNYK.SNYK.PROJECTS__V_1_0 p ON i.PROJECT_PUBLIC_ID = p.PUBLIC_ID
     INNER JOIN SNYK.SNYK.ORGS__V_1_0 o ON i.ORG_PUBLIC_ID = o.PUBLIC_ID 
WHERE p.IS_MONITORED = TRUE               -- include only monitored projects
     AND i.DELETED_AT IS NULL             -- remove deleted issues
     AND ISSUE_STATUS = 'Open'            -- include only open issues
     AND ISSUE_SEVERITY IN ('Critical')   -- include only critical issues
GROUP BY o.DISPLAY_NAME                   -- Update based on the desired aggregation
ORDER BY open_issues_aging DESC;          -- Update based on the desired order
