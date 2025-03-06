In our previous example, we treated ReadLine as a source of sensitive data. Let's consider a simple object with only specific sensitive fields:
```csharp
public class MyUser
{
    public string EmailAddress;
public string MembershipType;

}
```
For this class, only EmailAddress should be considered.
Therefore, given a code snippet like this:
```csharp
MyUser user = new MyUser();
user.EmailAddress = "support@snyk.io";
user.MembershipType = "SampleRole";
string sensitiveData = $"Username: ";
string notSensitiveData = $"MembershipType: ";
File.WriteAllText("testFile.txt", sensitiveData);
File.WriteAllText("testFile.txt", notSensitiveData);
```
The first call to WriteAllText should be prevented while the second call is allowed. To accomplish this, you can defer to specifying the field name in the query:
```ada
Taint<
  "EmailAddress",
  PRED:None,
  CallExpression<
    ~"global::System.IO.File.(Write|Append)All(Text|Lines|Bytes)(Async)?"

and 
  HasArg1<"testFile.txt" or "testFile.bin">

```

[^1]:
