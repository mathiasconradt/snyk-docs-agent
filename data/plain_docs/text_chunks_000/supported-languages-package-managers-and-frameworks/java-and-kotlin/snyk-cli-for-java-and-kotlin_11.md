Apache Ant is a Java build system focused solely on executing build tasks defined in XML. Apache Ivy extends Ant by adding dependency management, handling library retrieval and transitive dependencies, which Ant alone does not manage.
Ivy dependencies are configured in an XML file, for example ivy.xml:
```xml


<dependencies>
    <dependency org="junit" name="junit" rev="4.12" conf="default"/>
</dependencies>


```
Such a dependency file is typically evaluated using an ant task defined in build.xml:
xml
<target name="resolve-dependencies" depends="init">
    <ivy:retrieve pattern="$/[artifact]-[revision].[ext]"/>
</target>
Using the command ant resolve-dependencies, dependencies will be downloaded from Maven Central, just like regular Maven dependencies.
To let Snyk know about the dependency tree, you must first convert to the Maven POM format. Start by configuring a new makepom task in build.xml
xml
<target name="makepom" depends="resolve-dependencies">
    <ivy:makepom ivyfile="$/ivy.xml" pomfile="$/pom.xml" conf="default,runtime">
        <mapping conf="default" scope="compile"/>
        <mapping conf="runtime" scope="runtime"/>
    </ivy:makepom>
</target>
With this, you can now run the following commands:
ant makepom
snyk test --file=pom.xml
The pom.xml file does not need to be checked in and can be deleted after a test is done using snyk. Additionally, the dependency tree can be monitored using:
snyk monitor --file=pom.xml
