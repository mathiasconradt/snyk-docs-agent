Snyk uses the package-lock.json lockfile when present to generate a dependency tree for your project. These lockfiles come in different versions.
Lockfile v1 was used in npm v5 and v6. Two new formats were introduced in npm v7 - lockfile v2 and lockfile v3. For more information, see lockfileVersion.
You can see which lockfile format you are using in the package-lock.json, as follows:
json
{
    ...
    "lockfileVersion": 3,
    ...
}
If you want to force npm to create a specific lockfile version, use the npm --lockfile-version parameter.
bash
npm install --lockfile-version=2
