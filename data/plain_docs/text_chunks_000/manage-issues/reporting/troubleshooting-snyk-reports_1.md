Resolved issues are issues detected in the previous scan snapshot that no longer appear in the current snapshot.\
\
Changes in the Snyk code resolved column between snapshots may occur for any of the following reasons:

The issue was fixed between the two scans and is therefore marked as resolved.
The engine rules were improved, which may change the scan results.\
  This may add new issues or resolve previously detected issues.
The code changed in a way that caused the issue to be defined differently, thus changing the issue ID.\
  In this situation, the original issue ID is marked as resolved, and a new issue ID is created.
