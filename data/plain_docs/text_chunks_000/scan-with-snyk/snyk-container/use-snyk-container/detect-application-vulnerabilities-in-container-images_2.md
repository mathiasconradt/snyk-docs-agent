App vulns option
In CLI versions 1.1090.0 (2023-01-24) and higher, Snyk scans for application dependencies in your image by default; you do not need to specify the --app-vulns option.
If you want to opt out of application vulnerability scanning, you can specify the --exclude-app-vulns option. This omits the application vulnerabilities section from the results, mimicking the previous behavior. The --exclude-app-vulns option is available in CLI version 1.1021.0 and above.
