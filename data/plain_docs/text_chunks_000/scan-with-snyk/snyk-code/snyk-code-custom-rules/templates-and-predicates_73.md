Matches on entities annotated by a given annotation.
Template parameters:

Annotation - The annotation with which the entity is annotated.


Example

```java
package snippets.java.docs;

public class HasAnnotationDemo {
    public void oldMethod(@Deprecated String parameter1, String parameter2) {

    }
}
```

To capture `parameter1`, use the following query:

```
HasAnnotation<"java.lang.Deprecated">
```



Example (named parameters)

```java
package snippets.java.docs;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target()
@Retention(RetentionPolicy.RUNTIME)
@interface Sensitive {
    String reason();
}


public class HasAnnotationWithArgsDemo {
    private String email = "support@snyk.io";

    @Sensitive(reason = "PII")
    public String getEmail() {
        return email;
    }
}
```

To capture the `getEmail` method, use the following query:

```
HasAnnotation>>
```



HasAnnotation can not be used within Taint workflows yet.
