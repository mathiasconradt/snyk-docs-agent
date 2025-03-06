You can attach tags to the scanned Projects using the --project-tags option. This option accepts a comma-separated list of tags, where each tag is a key-value pair. Keys and values are separated by an = sign. The --project-tags option is valid only when used with --report.
The following example attaches the tags department and team to the scanned Projects, with values platform and persistence, respectively.
```

snyk iac test myproject --report \
    --project-tags=department=platform,team=persistence
```
