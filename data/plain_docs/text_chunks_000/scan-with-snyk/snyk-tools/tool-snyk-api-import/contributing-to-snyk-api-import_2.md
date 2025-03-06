Ensure that your code adheres to the included .eslintrc config by running npm run lint.
Sending pull requests

New command line options are generally discouraged unless there's a really good reason.
Add tests for newly added code (and try to mirror directory and file structure if possible).
Spell check.
PRs will not be code reviewed unless all tests are passing.

When fixing a bug, commit a failing test first so that CircleCI (or the approver) can show the code failing. Once that commit is in place, then commit the bug fix so that Snyk can test before and after.
Remember that you're developing for multiple platforms and versions of Node.js, so if the tests pass on your Mac or Linux or Windows machine, the tests may not pass elsewhere.
