The query below returns the unique developers and total number of scans per environment and Snyk Product.
The results are based on:

Tests executed
Excluding tests that were performed during CI/CD stage

sql
SELECT
    ENVIRONMENT_DISPLAY_NAME AS IDE,
    PRODUCT_DISPLAY_NAME AS PRODUCT,
    COUNT(DISTINCT USER_EMAIL) AS UNIQUE_DEVELOPERS,
    COUNT(1) AS TOTAL_SCANS
from SNYK.SNYK.USAGE_EVENTS__V_1_0
WHERE (RUNTIME_APPLICATION_DATA_SCHEMA_VERSION = 'v2' 
AND ARRAY_CONTAINS('test'::VARIANT, INTERACTION_CATEGORIES) 
AND INTERACTION_STAGE IN ('dev')
        OR RUNTIME_APPLICATION_DATA_SCHEMA_VERSION = 'v1'
     )
GROUP BY IDE, PRODUCT
