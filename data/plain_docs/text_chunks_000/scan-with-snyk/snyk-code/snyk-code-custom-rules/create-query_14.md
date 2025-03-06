In .NET, files can be written using WriteAllText. There are also WriteAllLines and WriteAllBytes.
Our code snippet may be extended this way:
```csharp
string userData = $"Username: ";
byte[] userBytes = Encoding.UTF8.GetBytes(userData);
string[] userLines = new string[] ;
File.WriteAllText("testFile.txt", userData);
File.WriteAllLines("testFile.txt", userLines);
File.WriteAllBytes("testFile.bin", userBytes);
```
Let's capture the variants first using regular expressions. We will look for the functions and also both filename variants (.bin and .txt):
```ada
Taint<
  "global::System.Console.ReadLine",
  PRED:None,
  CallExpression<
    ~"global::System.IO.File.(Write|Append)All(Text|Lines|Bytes)(Async)?"

and 
  HasArg1<"testFile.txt" or "testFile.bin">

```


Notice how CallExpression now contains a regular expression, whereas HasArg1 uses the or operator. It could be written either way.

Finally, let's add support for the .NETAsync variants and also the Append methods:
```ada
Taint<
  "global::System.Console.ReadLine",
  PRED:None,
  CallExpression<
    ~"global::System.IO.File.(Write|Append)All(Text|Lines|Bytes)(Async)?"

and 
  HasArg1<"testFile.txt" or "testFile.bin">

```
