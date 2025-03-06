Create the secret in Kubernetes by running the following command:


kubectl create secret generic snyk-monitor -n snyk-monitor \ 
        --from-file=./dockercfg.json \
        --from-literal=integrationId=abcd1234-abcd-1234-abcd-1234abcd1234 \
        --from-literal=serviceAccountApiToken=aabb1212-abab-1212-dcba-4321abcd4321
