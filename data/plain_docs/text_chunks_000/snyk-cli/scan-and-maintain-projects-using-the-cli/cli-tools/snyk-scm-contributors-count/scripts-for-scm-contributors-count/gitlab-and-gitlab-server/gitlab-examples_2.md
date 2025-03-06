Consider the following levels of usage and options:
Usage levels


To get commits for all groups and their projects in GitLab, provide the GitLab token (and server url for GitLab Enterprise):
snyk-scm-contributors-count gitlab --token TOKEN --url URL
*   To get commits for some groups and their projects in GitLab, provide the GitLab token and the group names, separated by a comma:
snyk-scm-contributors-count gitlab --token TOKEN --groups GROUP1,GROUP2



Note that for nested groups, you need to provide the lowest level group name, for example, for TopLevelGroup/MidLevelGroup/LowLevelGroup provide only "LowLevelGroup" with the --groups flag



To get commits for a specific project in GitLab, provide the GitLab token and one group name and one project name:
snyk-scm-contributors-count gitlab --token TOKEN --groups GROUP --project PROJECT
