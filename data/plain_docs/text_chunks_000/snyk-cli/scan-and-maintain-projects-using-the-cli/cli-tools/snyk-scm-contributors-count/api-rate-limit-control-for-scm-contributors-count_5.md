On GitLab, the API rate limit is 300 calls per minute for authenticated users as described in this guide and this guide for GitLab Server.
The snyk-scm-contributors-count tool applies a strict limit of a maximum of 120 calls per minute to deal with the rate limit and an additional regulating mechanism to deal with 429 responses ("too many calls").

On GitLab Server, the API rate control is configurable by the admin, as described in the guide.
