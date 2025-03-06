The Kubernetes integration collects information about how workloads are configured, focusing on options that can lead to security issues. Snyk displays this summary on the Project page:

To see the factors taken into consideration for the Priority Score of each vulnerability, hover over the score.

The rationale is based on the fact that a vulnerability that is present in a poorly configured workload scores higher than the same vulnerability found in a well-configured workload.
Snyk considers both the nature of the vulnerabilities and the specific issues raised by the configuration. Snyk takes into account the following factors: 
| Configuration                                                                                   | Vulnerability properties                                                                                                  |
| --------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| Permission issues, for instance running privileged, able to run as root, not dropping capabilities. | CVSSv3 Privileges (PR) vector present in the vulnerability. Weighing based on the impact.                                     |
| Missing memory and/or CPU limits.                                                                   | CVSSv3 Availability (A) vector present in the vulnerability, or CWE includes denial of service. Weighing based on the impact. |
| Not setting a read only root filesystem.                                                            | CWE indicates filesystem access required.                                                                                     |
This scoring system is not intended to be binary. Rather, it’s a risk calculation intended to help you prioritize your efforts.
