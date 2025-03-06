In npm v7 and above, the behavior of peer dependencies changes if they are being installed by default. To match this in npm v7+ projects, Snyk assumes peer dependencies are installed and scans them by default.
An npm v7+ project ignores peer dependencies only if they are explicitly marked as optional in the peerDependenciesMeta object in the package.json as shown here for cache-manager:
json
{
    ...
    "peerDependenciesMeta": {
        "cache-manager": {
            "optional": true
        }
    },
    ...
}
In npm v6 and below, peer dependencies are not scanned by default, as the package manager does not install them by default. To scan peer dependencies, ensure they are installed, and then run the CLI with the --peer-dependencies option.
