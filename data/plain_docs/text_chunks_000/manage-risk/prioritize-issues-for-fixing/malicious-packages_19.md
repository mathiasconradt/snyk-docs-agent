The .npmrc file in your Project's root directory can specify the registry where npm should fetch packages. Check if your .npmrc file is configured to use your private npm registry. 
This is how the file path should look if you are using a private registry:
registry=https://your-private-registry-url/ 
If you do not have an .npmrc file or it does not specify a registry, npm uses the default public registry, https://registry.npmjs.org/.
