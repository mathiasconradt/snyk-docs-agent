High availability mode is disabled by default. To activate it, set the following environment variables as shown either in your container or deployment:
BROKER_HA_MODE_ENABLED=true
Helm chart deployments can set these values by enabling the mode using set arguments. Helm chart version 1.7.0 or later is required.
--set highAvailabilityMode.enabled=true
Review the chart values file to adjust additional configurations such as increasing replica count, updating broker dispatcher base URL, and so on.
