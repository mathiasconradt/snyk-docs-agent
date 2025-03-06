After you have activated Snyk Code and imported repositories to Snyk for testing, you can view and work with the Snyk Code test results, which include vulnerabilities and fixes. See Manage code vulnerabilities.

If your SCM is already integrated with your Snyk Account, and you do not want to add additional SCMs, you can skip this step and move to Import repository to Snyk.
\
If you are using Snyk Code with the API, but not the CLI, this step is mandatory.

After you enable Snyk Code in your Snyk Organization settings to work in the Web UI or with the API but not the CLI, you must integrate your account with the Git repository you want to test.
Then, you can import the required repositories to your Snyk account, and Snyk Code automatically analyzes them and displays the analysis results.

Snyk Code temporarily clones your repositories for code analysis. This requires appropriate permissions and HTTPS access to your SCM.
For more information on how data is stored in Snyk, see How Snyk handles your data. For more details about integrations, see Integrate with Snyk.

To integrate your SCM with your Snyk account:
1. In the Snyk Web UI, navigate to Settings > Integrations > Source control.

If you already have an integrated SCM, it is marked as Configured. If you want to use the configured SCM, continue with Import repository to Snyk.

2. From the available options, select the SCM system you want to integrate by clicking Edit settings.
The Source control integrations display only SCMs that are supported by Snyk Code.
Source control options for Snyk Code
3. On the integration page, enter your account credentials and save your details.
This grants Snyk access permissions for the integrated SCM.
For more information on integrating Snyk with each of the available SCMs, see Git repositories (SCMs).
After you have integrated the SCM with your Snyk account, you can import the repositories you want to scan using Snyk Code.
