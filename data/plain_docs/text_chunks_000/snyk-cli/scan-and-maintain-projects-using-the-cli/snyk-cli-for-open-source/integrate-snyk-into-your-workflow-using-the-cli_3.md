Commit your change locally, checking the status of the change in the local git repository, then adding the change to the local git, and then committing it:

git status
   git add package*
   git commit -m "adding tinymce v4.1.0"

Commit your local code change to GitHub, transferring the files and history to your upstream git repository on GitHub:

git push --set-upstream origin add_vulns
GitHub has received your changes on your **add\_vulns** branch.

In GitHub, click Compare & pull request to compare the add_vulns branch with the master branch and generate a pull request:

Pull request information in GItHub
