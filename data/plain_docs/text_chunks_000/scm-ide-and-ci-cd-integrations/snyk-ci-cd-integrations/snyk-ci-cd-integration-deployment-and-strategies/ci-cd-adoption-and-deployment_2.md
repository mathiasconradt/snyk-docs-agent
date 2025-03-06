A typical approach is using Snyk results to expose vulnerabilities during the development process. This increases visibility of vulnerabilities among members of your team.
When you first implement Snyk in your pipeline, using only the snyk monitor command is recommended. If you use one of the Snyk CI plugins, it is recommended that you configure the plugin to not fail the build.
This is because all projects have vulnerabilities, and after you set Snyk to fail the build, every build fails because of Snyk. This may cause problems with your team being quickly overwhelmed with failure messages.
Using snyk monitor to expose results provides information without disrupting processes.
For information about snyk monitor, see the monitor command help.
