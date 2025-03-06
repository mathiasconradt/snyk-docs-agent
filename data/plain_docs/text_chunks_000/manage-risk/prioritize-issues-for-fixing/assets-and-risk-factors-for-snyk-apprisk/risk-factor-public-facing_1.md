The Snyk platform analyzes various data sources to compute the network connectivity paths. This information is used by Snyk AppRisk to determine if packages and Images may be exposed to external traffic. 
Cloud-native solutions are deterministic in how network connectivity is configured. Snyk uses that knowledge to compute the answers based on the available information. For example,  to understand how the network connectivity can be configured, see Kubernetes Services and Ingresses documentation. 

Snyk AppRisk Issues supports the following configurations: Kubernetes services and ingress, and Gloo.

Kubernetes Connector checks the images for ingress configuration. If not detected, the image is considered public facing.
