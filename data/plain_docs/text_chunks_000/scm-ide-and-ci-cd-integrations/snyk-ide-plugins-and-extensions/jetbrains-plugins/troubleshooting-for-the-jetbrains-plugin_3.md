Sometimes the checkboxes for Snyk Code in the JetBrains IntelliJ plugin are disabled. Some possible reasons follow:

Network or proxy settings: If the network or proxy settings are not configured correctly, the checkboxes may be disabled. Check to see if there is an MITM proxy with certificate substitution. Also, verify whether connections to the endpoint API and deeproxy can be established using other tools, for example, the CLI or cURL.
Incorrect endpoint address: If the endpoint address in the Snyk Code plugin configuration is incorrect, the checkboxes will be disabled. To fix this, check that the endpoint address is correct by following the instructions. Restart IntelliJ afterwards.
Snyk Code is disabled server-side: If Snyk Code is disabled in the Snyk Organisation's settings, the checkboxes will be disabled. To fix this, follow the instructions shown in the IntelliJ settings. Restart your IDE.
Have a look at the JetBrains logs: For additional information, see Locating IDE log files.
