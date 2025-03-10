Enabling Git Clone through Broker for Snyk Code will result in an interruption in any Code Agent deployments associated with the Organization. Imports and recurring tests will be interrupted, but PR checks continue because they were not supported for the Code Agent. You must follow the migration steps for a smooth transition.  Communications on how to migrate to Git Clone through Broker (Brokered Code)  have been sent to customers. If you have not received the instructions for migration or need help, contact contact Snyk support.
When you have completed the migration steps, you can enable GIt Clone through Broker for Code as follows: navigate to Settings, Organization settings, Snyk Broker, and toggle Enable Snyk Broker Git Clone Through Broker on. After you enable the feature, the toggle turns blue with a check mark.

Brokered Snyk Code enables the Broker to accept code files. The Broker then scans between the SCM system and Snyk.
To grant Broker access to perform a Git clone of your repository when you are installing with Docker, add the environment variable: ACCEPT_CODE=true. The Broker Helm Chart sets ACCEPT_CODE=true by default.
Example for installation with Docker:
docker run --restart=always \
           -p 8000:8000 \
           -e BROKER_TOKEN=secret-broker-token \
           -e GITHUB_TOKEN=secret-github-token \
           -e PORT=8000 \
           -e BROKER_CLIENT_URL=http://my.broker.client:8000 \
           -e ACCEPT_CODE=true
       snyk/broker:github-com
This adds the necessary accept rules for your Git server. 
After this is done, you can follow the Broker instructions for your SCM system. For details, see Install and configure Snyk Broker.
