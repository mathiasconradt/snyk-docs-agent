When --app-vulns is enabled, you can also use the --nested-jars-depth=n option to set how many levels of nested jars Snyk will unpack. The implicit default is 1. When you specify 2, it means that Snyk unzips jars in jars; 3 means Snyk unzips jars in jars in jars, and so on.
To opt out of any scans you feel are unnecessary, use --nested-jar-depth=0 .
