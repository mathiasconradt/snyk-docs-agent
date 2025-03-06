Snyk allows unlimited tests for public repositories. If you are on the Free plan, you have a limited number of tests per month. Paid plans have unlimited tests on private and public repositories. If you are on the Free plan and notice that your test count is quickly being used, even with public repositories, you can remedy this by telling Snyk the public URL of the repository that is being scanned by the Snyk CLI. This ensures that Snyk does not count a public repository towards the test limits.
If you run out of tests on an open-source Project, follow these steps:

Run snyk monitor.
Open the Snyk UI and navigate to the settings of the Project.
Enter the URL of your open-source repository in Git remote URL.
