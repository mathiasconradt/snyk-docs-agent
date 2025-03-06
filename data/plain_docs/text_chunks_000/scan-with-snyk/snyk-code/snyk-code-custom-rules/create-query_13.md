The first caveat is that perhaps only testFile.txt is considered unsafe. Files like cache.txt should be considered safe. 
```csharp
// Create a warning on this one
File.WriteAllText("testFile.txt", userData);
// We can ignore this file
File.WriteAllText("cache.txt", userData);
```
To achieve this, we use the CallExpression and HasArg1 templates. 
```ada
Taint<
  "global::System.Console.ReadLine",
  PRED:None,
  CallExpression<"global::System.IO.File.WriteAllText">
    and
      HasArg1<"testFile.txt">

```


CallExpression and HasArg1 may also be used on their own. Connecting them using the and operator establishes the relationship, and Snyk Code will attempt to match them in combination only.
