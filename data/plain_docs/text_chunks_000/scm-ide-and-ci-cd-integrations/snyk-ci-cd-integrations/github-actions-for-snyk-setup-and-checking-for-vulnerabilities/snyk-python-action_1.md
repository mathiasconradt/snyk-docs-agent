The examples that follow show how you can use a Snyk Python GitHub Action.
Snyk requires that Python download the dependencies before running or triggering the Snyk checks.
The Python image checks and installs dependencies only if the manifest files are present in the current path, that is, the path from where the action is being triggered.

If pip is present on the current path , and Snyk finds a requirements.txt file, then Snyk runs pip install -r requirements.txt.
If pipenv is present on the current path, and Snyk finds a Pipfile without a Pipfile.lock, then Snyk runs pipenv update.
If pyproject.toml is present in the current path and Snyk does not find poetry.lock then Snyk runs pip install poetry.

If manifest files are present under any location other root then they must be installed prior to running Snyk.
You can use the Snyk Python Action to check for vulnerabilities as follows:
yaml
name: Example workflow for Python using Snyk
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Run Snyk to check for vulnerabilities
        uses: snyk/actions/python@master
        env:
          SNYK_TOKEN: $}
You can use the Snyk CocoaPods Action to check for only high severity vulnerabilities as follows:
yaml
name: Example workflow for Python using Snyk
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Run Snyk to check for vulnerabilities
        uses: snyk/actions/python@master
        env:
          SNYK_TOKEN: $}
        with:
          args: --severity-threshold=high
