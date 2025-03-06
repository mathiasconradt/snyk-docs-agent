Tips for deciding on prioritization
After you implement a strategy to prevent new issues from entering your repositories, whether blocking builds or running in a non-blocking, advisory mode, the next step is to prioritize and start fixing issues in your backlog.

In Phase 4: Create a Fix strategy, you created a plan for prioritizing your Projects and issues. To implement this, you can schedule regular meetings with development team leads to assist them with this process. 
In the Snyk Tools section, there is a tool called jira-tickets-for-new-vulns, which can be scheduled to run on a regular basis to automatically create Jira tickets for vulnerabilities that meet your specified criteria. Whether this process is automated or not, creating tickets for your developers to review can be a great way to help make issues identified by Snyk more visible.
If you use Jira Cloud, you can download and install the Snyk Security in Jira Cloud plugin from the Atlassian marketplace. This allows you to view information on your Snyk Vulnerabilities directly in Jira, and use Jira Automation to create new tickets when new vulnerabilities are identified.
