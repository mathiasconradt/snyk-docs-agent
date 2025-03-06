The Snyk CLI uses the sbt-dependency-graph plugin, which has been included in sbt as a built-in plugin since sbt 1.4.
However, the recommended method of calling the plugin in sbt 1.4+ is not compatible with Snyk. Use the legacy method, addSbtPlugin() instead. Snyk recommends installing the sbt-dependency-graph as a global plugin so you can use it in any sbt project.
To do this, add the plugin dependency to ~/.sbt/0.13/plugins/plugins.sbt for sbt 0.13 or ~/.sbt/1.0/plugins/plugins.sbt for sbt 1.0+.
To add the plugin to a single Project only, update the project/plugins.sbt of your Project instead.
Regardless of which sbt version you are using, you must use the following command in the relevant plugins.sbt file:
addSbtPlugin("net.virtual-void" % "sbt-dependency-graph" % "0.10.0-RC1")

Do not use the addDependencyTreePlugin command which the sbt-dependency-graph plugin docs recommend for sbt 1.4+. This is incompatible with the Snyk CLI. \
Use the addSbtPlugin() command as given above.

For more information on installing sbt-dependency-graph for use with the Snyk CLI, see the article How to install the SBT dependency graph plugin to test Scala projects with Snyk CLI.
