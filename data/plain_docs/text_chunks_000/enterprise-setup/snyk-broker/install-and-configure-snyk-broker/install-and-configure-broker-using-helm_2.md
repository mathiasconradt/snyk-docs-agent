You can pass any environment variable of your choice in the Helm command. For details, see Custom additional options for Broker Helm Chart. 
For example, if you want to pass BROKER_CLIENT_VALIDATION_URL using the Helm chart, the additional parameters would be:
--set env[0].name=BROKER_CLIENT_VALIDATION_URL \\
--set env[0].value=whatever_value_makes_sense
Additional parameters would be:
--set env[1].name=MY_OTHER_ENV_VAR \\
--set env[1].value="other env with spaces" \\
--set env[2].name=THIRD_ENV_VAR \\
--set env[2].value=and_so_on
Follow the instructions for Advanced configuration for Helm Chart installation to make configuration changes as needed.
