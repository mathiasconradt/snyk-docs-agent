Matches on entities that take any argument with the provided value.
Template parameters:

Value


Example

```java
package snippets.java.docs;

public class VarArgsDemo {
    public void method(String... args) {}

    public static void main(String[] args) {
        VarArgsDemo check = new VarArgsDemo();
        check.method("tainted", "sample2", "sample3");
        check.method("sample0", "tainted", "sample2", "sample3");
        check.method("sample2", "sample3", "tainted");
    }
}
```

To match all 3 method calls which receive `tainted` values, use the following query:

```
HasAnyArg<"tainted">
```
