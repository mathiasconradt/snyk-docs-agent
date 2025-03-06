DeepCode AI Fix highlights all identified vulnerabilities that can be automatically fixed. These are highlighted with a zap icon. For example, in this scenario, we have identified a Cross-Site Request Forgery (CSRF).
Opening the vulnerability gives us details on where the issue is and allows us to generate a fix using DeepCode AI Fix.
Opening the Snyk Code vulnerability panel
Once you click on Generate fix using Snyk DeepCode AI, the machines will start turning and up to 5 fixes will be generated. To ensure we have fixed the vulnerability and DeepCode AI has not hallucinated and added a new vulnerability, we automatically retest all fixes with Snyk Code's engine.
The result, in this case, is 5 fixes, which you can navigate through to decide which one is best for you. The first one is importing and using csrf, should solve this issue.
5 fixes have been generated
When you apply the fix, you will be guided to where the new code has been introduced. After you save and rescan, the vulnerability will disappear.
Vulnerability has been fixed
