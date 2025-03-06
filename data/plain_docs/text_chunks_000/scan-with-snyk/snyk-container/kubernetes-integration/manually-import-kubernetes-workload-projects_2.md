In the Snyk Web UI, navigate to the Projects page, and click Add projects at the top of the page. From the list of Projects, select Kubernetes.
On the import screen that appears, all namespaces from the Kubernetes environment are displayed on the left, and the relevant namespace workloads are displayed on the right.
Kubernetes workloads import screen
Snyk purposely ignores scanning certain namespaces that Snyk believes are internal to Kubernetes (any namespace starting with kube-*). Therefore, those namespaces do not appear in the list, and neither do the workloads that those namespaces contain. You can see the full list of ignored namespaces in the kubernetes-monitor internal-workspaces file.
You can configure the list by adding the following code to Helm when you are setting up the snyk-monitor:
--set excludedNamespaces=
Select one or multiple namespaces from the left side of the screen, and for each namespace, select one or multiple workloads to import from the right side of the screen.
Selecting namespaces from the Kubernetes workloads import screen
Next, click Add selected workloads from the top right of the screen. When the import completes, the Projects page loads, and all the workloads that you have imported appear with a unique Kubernetes icon.
Each item is named according to its Kubernetes metadata:
\/\/\
In the Projects list, you can filter Kubernetes Projects.
