On the main page of Okta select Directory -> Groups.

Select a Group, navigate to the Applications tab, click Assign application if not already assigned, and choose your Snyk OIDC app,. Then click on the pencil next to the displayed Snyk OIDC app.
Group selected for modicification
3.  In the Edit App Assignment dialog, add the Snyk org name + role associated with your Okta group (no spaces or capital letter(s)), following the syntax explained in custom mapping (or legacy custom mapping if using the legacy mapping option). Example, snyk:org:*:org_admin.\
Adding Snyk roles
4. Repeat the preceding steps for all your applicable Okta groups to assign the org name and role combination to each user within each configured group.
