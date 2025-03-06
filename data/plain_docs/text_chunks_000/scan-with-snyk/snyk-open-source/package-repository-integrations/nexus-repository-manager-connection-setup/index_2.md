If your Nexus server is running behind a reverse proxy, for example, Nginx, the URL might not end with the default /repository for Nexus 3 or /nexus/content for Nexus 2, depending on what routes have been configured in the reverse proxy. If this is the case, ensure you use the URL configured in the reverse proxy.
Example: for Nexus 3, if http://nexus.company.io/repository is mapped to http://nexus.company.io/my-company/my-repository, use http://nexus.company.io/my-company/my-repository.
Example: for Nexus 2, if http://nexus.company.io/nexus/content is mapped to http://nexus.company.io/my-nexus-content, use http://nexus.company.io/my-nexus-content.

A green success message appears if Snyk can contact your repository.
If you see a yellow warning message, check your URL and credentials and try again.
