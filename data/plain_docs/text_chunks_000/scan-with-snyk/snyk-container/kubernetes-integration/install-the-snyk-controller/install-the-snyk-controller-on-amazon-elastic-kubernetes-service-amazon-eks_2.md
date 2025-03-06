Follow the instructions on Amazon EKS node IAM role and check your existing node role. Ensure you have attached the policy AmazonEC2ContainerRegistryReadOnly.
Navigate to the Details tab on your EKS node group page, where you will see Node IAM Role ARN

arn:aws:iam::<role-id>:role/<role-name>

Create a \.yaml with the following content:

```
volumes:
  projected:
    serviceAccountToken: true
securityContext:
  fsGroup: 65534
rbac:
  serviceAccount:
    annotations:
      eks.amazonaws.com/role-arn: 
```

Install the Snyk Controller.

After creating the IAM role for your service account, you can install your Snyk Controller with the newly created YAML file to overwrite the values in the Helm chart.
helm upgrade --install snyk-monitor snyk-charts/snyk-monitor \
             --namespace snyk-monitor \
             --set clusterName=<ENTER_CLUSTER_NAME> \
             -f <newFile>.yaml
