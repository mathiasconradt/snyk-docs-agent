Create a file named dockercfg.json. Store your credentials in this file.

Ensure the file containing your credentials is named dockercfg.json. This filename is required by the snyk-monitor.


Ensure the formatting is correct, including new line characters and whitespace in the dockercfg.json file. Malformed files will result in authentication failures.

The locations where your cluster runs and where your registries run determine the combination of entries in your dockercfg.json file. The file can contain credentials for multiple registries.
If your credentials are already in $HOME/.docker/config.json, copy this information to the dockercfg.json file.
If the auth entry is empty in the $HOME/.docker/config.json, run the following command and paste the output to auth entry in dockercfg.json:
echo -n 'username:password' | base64
