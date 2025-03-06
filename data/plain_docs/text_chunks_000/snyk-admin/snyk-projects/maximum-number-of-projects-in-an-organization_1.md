You will know you have reached the limit when you see the following warnings.
In the Snyk Web UI, this warning banner appears:
Banner at top of Projects listing showing how many Projects you have over the limit
In the Snyk CLI, the snyk monitor command returns the following error:
Maximum number of projects reached for this organization. You cannot import more projects.
In the Snyk API, an import request returns this error:
"data":{
        "code":400,
        "message":"This organization has 25000 of the maximum 25000 projects.
        You will not be able to import more projects: https://docs.snyk.io/getting-started/introduction-to-snyk-projects/maximum-number-of-projects-in-an-organsation",
        "errorRef":"5bc3fb50-cbcd-4c15-81f6-b183fc95d10f"
    },
