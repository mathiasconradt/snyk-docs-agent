Keep your applications secure by preventing deployment of vulnerable applications or components (registries), by adding Snyk in the build as a step of the pipeline.
The CLI offers

Optimum accuracy for a number of specific package managers, such as Scala, Gradle, and GO
Support for private packages without the need to configure an additional integration, given that your build environment will have access to your private packages.
Visibility to components that are pushed to production by either breaking builds and reporting to Snyk or only by reporting to Snyk.

There are a number of CI/CD integrations that you can use, or you can use the Snyk CLI as part of your pipeline to have more flexibility in the tests you are running.
In the initial phase, Snyk recommends using the monitor feature to import information into Snyk so you can see any discovered issues, unless you are already importing your repos using a source control integration to achieve this. Later, when you want to start gating and blocking new vulnerabilities from being added, you can introduce test features, initially failing builds on critical issues, and then gradually adapting the fail criteria over time.

For snyk iac test --report and snyk code test --report (beta), finding issues will result in the build possibly stopping with a non-zero response code. \
\
If you want to passively test this, including the --report option requires either setting the build step to always continue or an alternative like concatenating logic equating to or true, that is,  snyk code test --report || true. The exact syntax will depend on the ecosystem the CLI is running in. 

Plugins like Snyk Filter for advanced filtering and Snyk Delta for highlighting new issues are quite popular for configuring pipelines.
Demonstrations of various pipeline integrations can be found on Snyk-Labs
