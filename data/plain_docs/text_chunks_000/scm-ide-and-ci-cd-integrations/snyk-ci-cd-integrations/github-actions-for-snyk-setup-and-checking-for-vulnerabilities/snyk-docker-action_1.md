You can use the Snyk Docker Action to check for vulnerabilities in your Docker images as follows:
yaml
name: Example workflow for Docker using Snyk 
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
    - name: Run Snyk to check Docker image for vulnerabilities
      uses: snyk/actions/docker@master
      env:
        SNYK_TOKEN: $}
      with:
        image: your/image-to-test
