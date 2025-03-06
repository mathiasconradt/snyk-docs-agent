You can set attributes for the scanned Projects using the --project-business-criticality, --project-environment, and --project-lifecycle options. These options are valid only when used with --report.

--project-business-criticality accepts a comma-separated list of the following values: critical, high, medium, low.
--project-environment accepts a comma-separated list of the following values: frontend, backend, internal, external, mobile, saas, onprem, hosted, distributed.
--project-lifecycle accepts a comma-separated list of the following values: production, development, sandbox.

The following example sets the business criticality to high, the environment to the values frontend and internal, and the lifecycle to development for each scanned Project.
```

snyk iac test myproject --report \
    --project-business-criticality=high \
    --project-environment=frontend,internal \
    --project-lifecycle=development
```
