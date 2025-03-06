Let's assume that you are integrating a new third-party library into an existing application, and after a scan, you discover that the library has several vulnerabilities. Filter the vulnerabilities using the Risk score to determine which vulnerabilities pose the greatest threat. 
Remember that Risk score must first be enabled from the Snyk Preview screen and can only be applied to Snyk Open Source and Snyk Container.
Scan your source code and apply the following filters to your list of found vulnerabilities to prioritize remediation efforts:

Issue type: Vulnerabilities
Severity: Critical
Fixed availability: Yes
Computed fixability: Fixable
Exploit maturity: Mature

After you apply the filters, you have a list of the most critical vulnerabilities that need to be fixed before safely integrating the third-party library with your application. Fixing these critical issues you are preventing a potential security breach and are also safeguarding the integrity of your application. 
Given the high severity and the mature exploit, the risk score for this issue would be elevated, indicating an urgent need for action. In this scenario, organizations should prioritize patching this vulnerability immediately due to the high risk of exploitation.
This example demonstrates how risk scores guide decision-makers in prioritizing security efforts effectively, ensuring that the most critical vulnerabilities are addressed promptly.
Priority score detailed card
