You can use the Snyk dotNET Action to check for vulnerabilities as follows:
yaml
name: Example workflow for dotNET using Snyk
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Setup .NET
        uses: actions/setup-dotnet@4
      - name: Restore dependencies
        run: dotnet restore ./path/to/your.sln
      - name: Run Snyk to check for vulnerabilities
        uses: snyk/actions/dotnet@master
        env:
          SNYK_TOKEN: $}
You can use the Snyk dotNET Action to check for only high severity vulnerabilities as follows:
yaml
name: Example workflow for dotNET using Snyk
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Run Snyk to check for vulnerabilities
      - name: Setup .NET
        uses: actions/setup-dotnet@4
      - name: Restore dependencies
        run: dotnet restore ./path/to/your.sln
        uses: snyk/actions/dotnet@master
        env:
          SNYK_TOKEN: $}
        with:
          args: --severity-threshold=high

It is required to restore the dependencies using dotnet restore or nuget restore before running the Snyk action
