The Snyk Risk score and Priority score are keys to security management. Both types of score help Organizations handle current threats and prepare for future vulnerabilities, leading to a more robust security framework.
The Priority and Risk Scores rank the issues and the urgency of fixing them. Both scores provide a number between 1 and 1000, where 1 means low severity and 1000 means high severity. Snyk uses these numbers to indicate the urgency of remediating a vulnerability.

Risk score assesses the potential impact of vulnerabilities, prioritizing those with severe consequences. 
Priority score helps teams quickly identify and address critical security vulnerabilities by ranking them based on urgency. 

Risk Score and Priority Score are fundamental to vulnerability management. Risk Score predicts the long-term impact of a vulnerability. Priority Score assesses vulnerabilities based on their immediacy and likelihood of exploitation, prioritizing responses to potential threats that could immediately compromise security. In contrast, Risk Score guides strategic resource allocation to prevent long-term damage.
If you want to compare scores, ensure you are looking at the same type of score and for the same product. For example, you can compare a Risk score from Snyk Open Source with another Risk score from Snyk Open Source but cannot compare a Risk score from Snyk Open Source with another Risk score from Snyk Container.
By default, the Priority score is enabled for Snyk Container, Snyk Code, Snyk IaC, and Snyk Open Source issues. If the user enables the Risk score from Snyk Preview, then the scores are applied like this:

Risk score is applied to Snyk Container and Snyk Open Source issues.
Priority score is applied to Snyk Code and Snyk IaC issues.
