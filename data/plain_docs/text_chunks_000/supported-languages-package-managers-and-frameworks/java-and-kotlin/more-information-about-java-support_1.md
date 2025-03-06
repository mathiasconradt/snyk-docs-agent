A BOM file includes:

a pom packaging type: <packaging>pom</packaging>.
a dependencyManagement section.

Third-party Projects can provide BOM files to make dependency management easier. Here are some common examples:

spring-data-bom - The Spring team provides a BOM for their Spring Data Project.
jackson-bom - The Jackson Project provides a BOM for Jackson dependencies.

Here is an example of a BOM file:

```xml

4.0.0
snyk
snyk-bom
1.0
pom
Snyk Bill Of Materials
<dependencyManagement>
    <dependencies>
        <dependency>
            <groupId>log4j</groupId>
            <artifactId>log4j</artifactId>
            <version>1.2.12</version>
        </dependency>
        <dependency>
            <groupId>commons-logging</groupId>
            <artifactId>commons-logging</artifactId>
            <version>1.1.1</version>
        </dependency>
    </dependencies>
</dependencyManagement>


```

The dependencyManagement section contains dependency elements. Each dependency is a lookup reference for Maven to determine the version to select for transitive (and direct) dependencies.
Defining a dependency in the dependencyManagement section does not add it to the dependency tree of the Project. It is used only for lookup reference.
You can run mvn dependency:tree on the previous BOM example to show that Maven does not treat the contents as dependencies of the file itself.
This BOM can be imported into a Project POM as a parent. The log4j version does not need to be specified; it inherits it from the BOM:

```xml

4.0.0

snyk
snyk-bom
1.0

<groupId>snyk</groupId>
<artifactId>snyk-project</artifactId>
<version>1.0.0-SNAPSHOT</version>
<packaging>jar</packaging>
<name>Snyk Project</name>

<dependency>
    <groupId>log4j</groupId>
    <artifactId>log4j</artifactId>
</dependency>


```
