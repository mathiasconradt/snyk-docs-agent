Android Gradle supports creating different versions of your app by configuring build variants.
Because the Snyk default behavior is to merge all available configurations, the iterated variants cause a clash of configurations that can't be merged.
In these situations, the Snyk scan fails with an error from Gradle which may contain one of the following messages:

Cannot choose between the following configurations of project :mymodulewithvariants
Cannot choose between the following variants of project :mymodulewithvariants
Could not select value from candidates

To avoid such conflicts:


Use a specific configuration(s): if you know of a build configuration that has all the required attributes and the configuration is identical across all sub-projects included in the test, specify that configuration.\
    For example:
--configuration-matching=prodReleaseRuntimeClasspath
*   Explicitly specify the dependency configuration: modify intra-project dependencies in your build.gradle file(s) to use a specific configuration
dependencies {
      implementation project(path: ':mymodulewithvariants', configuration: 'default')
  }
*   Suggest configuration attributes: if you receive an error when running the command, the error may indicate which attribute values are available, while the error details from Gradle also indicate which dependency variants match which attributes. Using these details, add the attribute filter option.\
For example:
snyk test --configuration-attributes=buildtype:release,usage:java-runtime,mode:demo
matches the variants using com.android.build.api.attributes.BuildTypeAttr=release and org.gradle.usage=java-runtime
