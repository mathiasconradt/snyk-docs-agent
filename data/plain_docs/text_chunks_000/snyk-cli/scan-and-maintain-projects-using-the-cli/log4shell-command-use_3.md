Results appear after the scan finishes.
For example:
``bash
$ snyk log4shell
Please note this command is for already built artifacts. To test source code usesnyk test`.
Results:
A vulnerable version of log4j was detected: 
         demo-0.0.1-SNAPSHOT/WEB-INF/lib/log4j-core-2.14.1.jar
         demo-0.0.1-SNAPSHOT.war/WEB-INF/lib/log4j-core-2.14.1.jar
         demo-0.0.1-SNAPSHOT.war.original/WEB-INF/lib/log4j-core-2.14.1.jar
We highly recommend fixing this vulnerability. If it cannot be fixed by upgrading, see mitigation information here:
        - https://security.snyk.io/vuln/SNYK-JAVA-ORGAPACHELOGGINGLOG4J-2314720
        - https://snyk.io/blog/log4shell-remediation-cheat-sheet/
```
If no traces of a vulnerable log4j library are found, the results show this:
``
$ snyk log4shell
Please note this command is for already built artifacts. To test source code usesnyk test`.
Results:
No known vulnerable version of log4j was detected
```
