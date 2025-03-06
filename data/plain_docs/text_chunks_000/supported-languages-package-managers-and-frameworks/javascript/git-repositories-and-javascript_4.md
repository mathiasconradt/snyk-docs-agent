In Yarn v2, the zero-installs feature was released, which allowed Yarn developers to work on a Project without having to run yarn to install dependencies on their machine. 
Zero-installs achieved this by installing all the dependencies of a Project inside of the .yarn/cache directory and asking users to commit this to their version control system , allowing the next developer to pull any new dependencies directly from the repo.

If you use the zero-installs feature, Snyk Fix PRs do not update the .yarn/cache directory. You must run yarn to update this directory.
