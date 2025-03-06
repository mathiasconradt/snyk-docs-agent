Matches on entities that happen after in the dataflow of its parameter.
Template parameters:

PrevAction - The previous action executed.


Example

In the following code snippet, `replaceAll` is used as a sanitizer for data read from the source `scanner.nextLine()`:

```java
import java.util.Scanner;

public class RegexSanitize {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String input = scanner.nextLine();
        input = input.replaceAll("[^a-zA-Z0-9 ]", "");
        System.out.println(input);
    }
}
```

To verify **replaceAll** with specific parameters is part of this **call chain**, the following rule can be used:

```starlang
And, HasArg1<"[^a-zA-Z0-9 ]">>
HasArg0, 
    And<
      HasArg0<"java.util.Scanner">, 
      HasArg0>
    >
  >
>>
```

Using `HasArg0`, a relationship to `DataFlowAfter` is established in order to express that a `replaceAll` call (matched by the preceding `And` template) appears on the data flow path after `scanner.nextLine()`.

***

Note this will only match on the function call being actually executed, regardless of whether `input` is re-assigned with the sanitised value or not.

It does not match on the data being sent to `System.out.println`. Combine this function with `Taint` to achieve such a check.

```starlang
Taint<
  And<
    And, HasArg1<"[^a-zA-Z0-9 ]">>,
    HasArg0, 
        And<
          HasArg0<"java.util.Scanner">, 
          HasArg0>
        >
      >
    >>
  >,
  PRED:None,
  "java.lang.System.out.println"
>
```
