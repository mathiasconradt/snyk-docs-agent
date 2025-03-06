Release status\
All snyk apps subcommands are available only behind the --experimental flag and the behavior can change at any time, without prior notice. Use all the commands with caution.

You can use the Snyk CLI to create Snyk Apps by running snyk apps create. There are two ways to use the command.
The first is the normal mode, for example:
snyk apps create --experimental --org=48ebb069-472f-40f4-b5bf-d2d103bc02d4 --name='My Awesome App' --redirect-uris=https://example1.com,https://example2.com --scopes=apps:beta
The second is the interactive mode, which prompts you to enter all the values in a similar way as with the normal mode. The following is an example of the interactive mode:
snyk apps create --experimental --interactive
```
snyk apps create --experimental --interactive
? Name of the Snyk App (visible to users when they install the Snyk App)? My Awesome Snyk App
? Your Snyk App's redirect URIs (comma-separated list.  Ex: https://example1.com,https://example2.com)?:  https://example1.com
? Your Snyk App's permission scopes (comma-separated list.  Ex: org.read)?:  apps:beta
? Please provide the org id under which you want to create your Snyk App:  48ebb069-472f-40f4-b5bf-d2d103bc02d4
```
