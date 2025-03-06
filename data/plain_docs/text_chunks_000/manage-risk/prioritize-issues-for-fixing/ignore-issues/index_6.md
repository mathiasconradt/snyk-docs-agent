For Open Source Projects, you can ignore the vulnerability by creating a .snyk YAML file or  modifying the existing .snyk file.
A .snyk file
For example, if you want to ignore the vulnerability with SNYK ID SNYK-RUBY-FASTREADER-20085 in fastreader, with the reason “No fix available” until 01 Jan 2024, you would write the following:
version: v1.5.0
ignore:
    'SNYK-RUBY-FASTREADER-20085':
     - '* > fastreader':
        reason: 'No fix available'
        expires: '2024-01-01T00:00:00.000Z'

For more information, see The .snyk file, including the section about .snyk files in monorepos and .snyk files in different directories from manifest files.
