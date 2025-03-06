Scala sbt Projects can be imported from any of the Git repositories that Snyk supports.
To test your Scala Projects using sbt as a package manager, Snyk analyzes your build.sbt file.\
To ensure that this works properly, you must have this file in your repository before importing your projects.
You cannot declare versions of dependencies in a file that is not accessible to Snyk using a Source Code Manager (SCM) integration, for example, Dependencies.scala.

To ensure that your Scala dependencies are detected when you import your Projects using an SCM integration, your build.sbt dependencies must be declared in a format that Snyk can detect, for example:\
  "commons-io" % "commons-io" % "2.11.0".
You can use a version declared in a variable if the variable is in the build.sbt file, for example:

scala
  lazy val derbyVersion = "10.4.1.3"
  libraryDependencies ++= Seq(
    "org.apache.derby" % "derby" % derbyVersion
  )
For more information, see Differences in Open Source vulnerability counts across environments.
