You can use YAML multiline operators. You can create a detailed description that spans several lines by following this format: 
```yaml
description: |
  This pull request comes from Snyk
  For more information see the project page }
  If you have more questions reach out to a member of the security team
```
The pipe operator preserves new line characters. Use greater than, > , to join all the lines by a space with a new line at the end. To use a colon, you can either use multiline operators, | or >, or enclose the line in double quotes:
yaml
commitMessage: "snyk: this is a security pull request"
