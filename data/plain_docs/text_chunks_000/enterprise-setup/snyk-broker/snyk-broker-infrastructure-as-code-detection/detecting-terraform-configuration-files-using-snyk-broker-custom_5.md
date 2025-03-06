Copy the following list of file extensions:
"**/*.yaml",
            "**%2F*.yaml",
            "**/*.yml",
            "**%2F*.yml",
            "**/*.json",
            "**%2F*.json",
            "**/*.tf",
            "**%2F*.tf",
Add the extensions to the values array in two places in the accept.json:

"//": "get file content. restrict by file types"
"//": "check file existence. restrict by file types"
