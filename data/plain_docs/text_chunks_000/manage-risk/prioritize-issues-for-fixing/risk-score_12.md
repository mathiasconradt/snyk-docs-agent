Exploit Prediction Scoring System (EPSS) predicts whether a CVE will be exploited in the wild based on an elaborate model created and owned by the FIRST Organization. \
The probability is the direct output of the EPSS model and conveys an overall sense of the threat of exploitation in the wild. This data is updated daily, relying on the latest available EPSS model version. See the EPSS documentation for more details.\
Possible input values: EPSS score [0.00-1.00]

The likelihood subscore increases significantly according to the EPSS score.

If the vulnerability is found to be malicious, the EPSS value is set to 1. If no information regarding the EPSS is available, then the default value is 0.01055.
