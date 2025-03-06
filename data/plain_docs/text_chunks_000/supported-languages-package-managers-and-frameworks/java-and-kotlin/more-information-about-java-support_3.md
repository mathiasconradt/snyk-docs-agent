Snyk offers fix advice, including recommendations for upgrading vulnerable packages with the Fix PR feature.
Fix PRs can only be created for dependencies whose versions are managed in the POM file where the issue is reported.
If the version or dependency is managed in a parent BOM, then even though Snyk sees that it could fix the vulnerable path by changing the version,  it cannot apply the fix.
