To do this:

When you use AKS with user-managed identities to authorize access to ACR, and there are multiple identities that assign the AcrPull role to the VM scale set, you must also specify the Client ID of the desired user-managed identity to be used. This value must be set as an override, in .Values.azureEnvVars:

yaml
azureEnvVars:
  - name: AZURE_CLIENT_ID
    value: "abcd1234-abcd-1234-abcd-1234abcd1234"

With the YAML above saved in override.yaml, run the following command:

bash
helm upgrade --install snyk-monitor snyk-charts/snyk-monitor \
  --namespace snyk-monitor \
  -f override.yaml
By default, this value is set to an empty string, and it is not used as such.

When using the system-managed identity with the AcrPull role assigned, setting this variable is not necessary.
