These steps describe how to use Jira automation and JQL to automatically close or change the status of tickets for vulnerabilities that are now in a closed state.

In Jira on your Project, navigate to Project Settings and then Automation.
Click he Create Rule button.
Click Scheduled and then Scheduled.

Add Scheduled trigger

Select the checkbox that says Run a JQL search and enter status != Done AND vulnerability[status] = CLOSED in the field. Then click Next.

Set up a scheduled JQL search

Add a new component and choose THEN: Add an action. Select Issue actionsandchoose Transition issue.

Transition issue action

Set the Destination status to Done or another status depending on your workflow.

Set up the transition to Done status

Now that the setup is complete, give it a name and click on Turn on rule.

Now, according to your schedule, Jira will search for any issues for which the vulnerability is closed, but the issues are not closed, and close each Jira issue.
