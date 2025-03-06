If after running the Broker there is still an error connecting to the on-premise Git, use the following troubleshooting steps.

Ensure there are relevant logs in the Broker container. To do this, attempt to connect to the on-premise Git. Do this by navigating to the Integrations tab and attempt to import. This generates a log in the Broker logs.
Review the logs of the container. This can be done on Docker by running docker logs <container id>
Review the logs to see where the problem is occurring.
