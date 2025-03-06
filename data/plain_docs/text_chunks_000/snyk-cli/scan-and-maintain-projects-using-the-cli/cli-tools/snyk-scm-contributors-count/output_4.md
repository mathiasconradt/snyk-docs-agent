```
Contributors details
[
    [
        "someUser",
        {
            "email": "someUser@company.io",
            "contributionsCount": 15,
            "reposContributedTo": [
                "someOrganization/someRepository(Private)"
                "anotherOrganization/anotherRepository(Public)"
            ]
        }
    ],
    [
        "anotheruser",
        {
            "email": "anotherUser@company.io",
            "contributionsCount": 11,
            "reposContributedTo": [
                "someOrganization/someRepository(Private)"
            ]
        }
    ],
    [
        "anotheruser(duplicate)",
        {
            "email": "anotherUser@otherCompany.com",
            "contributionsCount": 11,
            "reposContributedTo": [
                "someOrganization/someRepository(Private)"
            ]
        }
    ]
]
```

email - The email of the contributor
contributionsCount - The number of the times this contributor has contributed to the repo/s.
repoContributedTo - A list of the repo/repos to which this contributor has contributed.
(duplicate) - Indicator that the same user has been detected from different email addresses; note that they will be counted as different committers.


As the output can be long, Snyk recommends sending the output to a file for better review and parsing options.
