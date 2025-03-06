The query below returns counters of open issues per SLA status (within SLA, at risk, breached) broken down into issue severities.
The results are based on:

Open issues
Noise cancelling:
Only issues of monitored projects
No deleted issues

sql
WITH 
    base AS (
    SELECT 
        CASE
            WHEN LAST_INTRODUCED IS NULL THEN DATEDIFF('DAY', TO_DATE(FIRST_INTRODUCED), CURRENT_DATE)
            WHEN TO_DATE(FIRST_INTRODUCED) <= TO_DATE(LAST_INTRODUCED) THEN DATEDIFF('DAY', TO_DATE(LAST_INTRODUCED), CURRENT_DATE)
        END AS ISSUE_AGE,
        ISSUE_SEVERITY,     
        CASE 
           WHEN ISSUE_SEVERITY = 'Critical' AND ISSUE_AGE > c.CRITICAL THEN 'Breached' 
           WHEN ISSUE_SEVERITY = 'Critical' AND ISSUE_AGE >= (c.CRITICAL-c.CRITICAL_AT_RISK) THEN 'At Risk' 
           WHEN ISSUE_SEVERITY = 'Critical' AND ISSUE_AGE < (c.CRITICAL-c.CRITICAL_AT_RISK) THEN 'Within SLA' 
           WHEN ISSUE_SEVERITY = 'High' AND ISSUE_AGE > h.HIGH THEN 'Breached' 
           WHEN ISSUE_SEVERITY = 'High' AND ISSUE_AGE >= (h.HIGH-h.HIGH_AT_RISK) THEN 'At Risk' 
           WHEN ISSUE_SEVERITY = 'High' AND ISSUE_AGE < (h.HIGH-h.HIGH_AT_RISK) THEN 'Within SLA' 
           WHEN ISSUE_SEVERITY = 'Medium' AND ISSUE_AGE > m.MEDIUM THEN 'Breached' 
           WHEN ISSUE_SEVERITY = 'Medium' AND ISSUE_AGE >= (m.MEDIUM-m.MEDIUM_AT_RISK) THEN 'At Risk'
           WHEN ISSUE_SEVERITY = 'Medium' AND ISSUE_AGE < (m.MEDIUM-m.MEDIUM_AT_RISK) THEN 'Within SLA'  
           WHEN ISSUE_SEVERITY = 'Low' AND ISSUE_AGE > l.LOW THEN 'Breached' 
           WHEN ISSUE_SEVERITY = 'Low' AND ISSUE_AGE >= (l.LOW-l.LOW_AT_RISK) THEN 'At Risk' 
           WHEN ISSUE_SEVERITY = 'Low' AND ISSUE_AGE < (l.LOW-l.LOW_AT_RISK) THEN 'Within SLA' 
       END AS SLA_STATUS       
       FROM SNYK.SNYK.ISSUES__V_1_0 i 
            INNER JOIN SNYK.SNYK.PROJECTS__V_1_0 p ON i.project_public_id = p.public_id
            -- set the SLA TARGETS and AT RISK threshold inside the select clause of each table below
            CROSS JOIN (SELECT 15 AS CRITICAL, 3 AS CRITICAL_AT_RISK) AS c
            CROSS JOIN (SELECT 30 AS HIGH, 10 AS HIGH_AT_RISK) AS h 
            CROSS JOIN (SELECT 90 AS MEDIUM, 20 AS MEDIUM_AT_RISK) AS m 
            CROSS JOIN (SELECT 180 AS LOW, 30 AS LOW_AT_RISK) AS l 
       WHERE IS_MONITORED = true    -- include only monitored projects
        AND ISSUE_STATUS = 'Open'   -- include only open issues
        AND i.DELETED_AT IS NULL    -- remove deleted issues
    )
SELECT
    SLA_STATUS,
    SUM(CASE WHEN ISSUE_SEVERITY = 'Critical' THEN 1 ELSE 0 END) AS critical,
    SUM(CASE WHEN ISSUE_SEVERITY = 'High' THEN 1 ELSE 0 END) AS high,
    SUM(CASE WHEN ISSUE_SEVERITY = 'Medium' THEN 1 ELSE 0 END) AS medium,
    SUM(CASE WHEN ISSUE_SEVERITY = 'Low' THEN 1 ELSE 0 END) AS low
FROM base
GROUP BY SLA_STATUS
ORDER BY SLA_STATUS

The example query can be extended to support various SLA use-cases, such as defining different SLA targets per Snyk orgs or groups, drilling-down into the at-risk or breached issues and prioritize their remediation or analyzing the SLA status for different business units.
