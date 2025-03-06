The query below returns last month’s MTTR results per issue severity per Snyk organization.\
The results are based on:

Issues that were resolved in the last month
Noise cancelling:
Only issues of monitored projects
No deleted issues

sql
SELECT 
    o.DISPLAY_NAME AS organization_display_name,
    ROUND(AVG(CASE WHEN ISSUE_SEVERITY = 'Critical' THEN 
        DATEDIFF('DAY', TO_DATE(LAST_INTRODUCED),TO_DATE(LAST_RESOLVED)) ELSE NULL END),2) AS critical_mttr,
    ROUND(AVG(CASE WHEN ISSUE_SEVERITY = 'High' THEN 
        DATEDIFF('DAY', TO_DATE(LAST_INTRODUCED),TO_DATE(LAST_RESOLVED)) ELSE NULL END),2) AS high_mttr,
    ROUND(AVG(CASE WHEN ISSUE_SEVERITY = 'Medium' THEN 
        DATEDIFF('DAY', TO_DATE(LAST_INTRODUCED),TO_DATE(LAST_RESOLVED)) ELSE NULL END),2) AS medium_mttr,
    ROUND(AVG(CASE WHEN ISSUE_SEVERITY = 'Low' THEN 
        DATEDIFF('DAY', TO_DATE(LAST_INTRODUCED),TO_DATE(LAST_RESOLVED)) ELSE NULL END),2) AS low_mttr
FROM SNYK.SNYK.ISSUES__V_1_0 i
    INNER JOIN SNYK.SNYK.PROJECTS__V_1_0 p ON i.PROJECT_PUBLIC_ID = p.PUBLIC_ID
    INNER JOIN SNYK.SNYK.ORGS__V_1_0 o ON i.ORG_PUBLIC_ID = o.PUBLIC_ID 
WHERE IS_MONITORED = TRUE                       -- include only monitored projects
     AND i.DELETED_AT IS NULL                   -- remove deleted issues
     AND ISSUE_STATUS = 'Resolved'              -- include only resolved issues
     -- issues that were resolved in the last month
     AND TO_DATE(LAST_RESOLVED) >= DATE_TRUNC('MONTH', DATEADD('MONTH', -12, CURRENT_DATE))
     AND TO_DATE(LAST_RESOLVED) <= DATEADD('DAY', -1, DATE_TRUNC('MONTH', CURRENT_DATE))
GROUP BY organization_display_name
ORDER BY organization_display_name ASC;         -- Update based on the desired order
