Snyk can monitor your Open Source or Container integrated SCM Project periodically and alert you to new vulnerabilities. To set up your Project to be monitored, run snyk monitor or snyk container monitor.
This creates a snapshot of your current dependencies so Snyk can regularly scan your code. Snyk can then alert you about newly disclosed vulnerabilities as they are introduced or when a previously unavailable patch or upgrade path is created. The following code shows an example of the output of the snyk monitor command.
```

snyk monitor
Monitoring /project (project-name)...

Explore this snapshot at 
https://app.snyk.io/org/my-org/project/29361c2c-9005-4692
-8df4-88f1c040fa7c/history/e1c994b3-de5d-482b-9281-eab4236c851e
Notifications about newly disclosed issues related to these 
dependencies will be emailed to you.
```
You can log in to your Snyk account and navigate to the Projects page to find the latest snapshot and scan results:
Snyk monitor snapshot and scan results
For more information, see Monitor your Projects at regular intervals.
