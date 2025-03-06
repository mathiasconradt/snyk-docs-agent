Matches on entities that take an argument in the 0th index (i.e. receiver object for method calls) with the provided value.
Template parameters:

Value


Example (Java)

The following code snippet demonstrates two types of logging into a network service using a method named `login`.

```java
import sun.net.ftp.FtpProtocolException;
import sun.net.ftp.impl.FtpClient;

import javax.security.auth.login.LoginContext;
import javax.security.auth.login.LoginException;
import java.io.IOException;

public class X {
    private static void ftpExample() {
        FtpClient client = new FtpClient();
        try {
            client.login("user", "pass".toCharArray());
        } catch (FtpProtocolException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static void loginContextExample() {
        try {
            LoginContext lc = new LoginContext("MyLoginConfig");
            lc.login();
            System.out.println("Authentication succeeded!");

        } catch (LoginException e) {
            System.err.println("Authentication failed: " + e.getMessage());
        }
    }

    public static void main(String[] args) {
        ftpExample();
        loginContextExample();
    }
}
```

For this example, the target may be to **capture only the login call on the FtpClient class**. To select it, the following query will match:

```
And, CallExpression<"login">>
```



Example (Python)

The following code snippet demonstrates two types of logging into a network service using a method named `login`.

```python
from ftplib import FTP, error_perm
import smtplib

def ftp_example():
    try:
        ftp = FTP('ftp.example.com')
        ftp.login('user', 'pass')
        print("FTP login successful")
    except error_perm as e:
        print(f"FTP login failed: ")

def smtp_example():
    try:
        smtp = smtplib.SMTP('smtp.example.com', 587)
        smtp.ehlo()
        smtp.starttls()
        smtp.login('user@example.com', 'password')
        print("SMTP login successful")
    except smtplib.SMTPException as e:
        print(f"SMTP login failed: ")

if __name__ == '__main__':
    ftp_example()
    smtp_example()
```

For this example, the target may be to **capture only the login call on the FTP class**. To select it, the following query will match:

```starlang
And, CallExpression<"login">>
```
