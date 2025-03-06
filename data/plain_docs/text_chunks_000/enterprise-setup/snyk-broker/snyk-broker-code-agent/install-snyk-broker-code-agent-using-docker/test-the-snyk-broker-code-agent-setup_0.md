Deprecated
The Code Agent is deprecated and is no longer maintained.
The preferred method of running Snyk Code analysis using Snyk Broker is through Brokered Code. The Code Agent is an alternative method without advantages. For details, contact your Snyk Integration Consultant or Technical Success Manager or contact Snyk Support.
The automatic PR Checks feature is not supported for Snyk Broker - Code Agent.

To test the Code Agent with Snyk Broker setup, import a repository to Snyk and verify that you receive the Code Analysis Project and results. When the selected repositories are imported to Snyk, and the Snyk Code results are displayed, the Code Agent with Snyk Broker setup is operating successfully.
To test the setup, follow these steps:
1. On the Snyk Web UI, open the Organization where you want to test the Code Agent.
2. When the required Organization is open, select Add project. Then select the SCM for which you set the Code Agent:
Select Add Project and the SCM
3. On the Personal and Organization repositories page, select the repositories you want Snyk Code to analyze, and click the Add selected repositories button:
Select repositories for Snyk Code to analyze
The selected repositories are imported to Snyk Code, and a progress bar appears on the Projects page. When the import is completed, a message appears on the Projects page confirming the success of the import. Your imported repositories appear as Target folders, each containing the Code analysis Project that includes the findings of the Snyk Code test:
Confirmation message and target folders
4. To view the Snyk Code results, select the Code analysis Project.
The Code Analysis page opens, displaying the list and details of the vulnerability issues that were discovered in the selected repository:
Code Analysis page showing issues
5. To view the details of a vulnerability issue, select Full details.
The details of the issue appear, and depending on the way you set up the Broker client, the code snippets either appear in the Data flow tab or not:
This example shows Snyk Code results with code snippets.
Broker Client run with display of code snippets
This example shows Snyk Code results without code snippets:
Broker Client run with no display of code snippets
For more information on how to troubleshoot the Snyk Broker Code Agent setup, see Troubleshooting Broker.
