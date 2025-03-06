Code Agent 1.15.2 and below do not support trust of custom Certificate Authorities, and instead must run in a mode that trusts all certificates.
Add the following environment variable to the docker run command of the Code Agent:
-e NODE_TLS_REJECT_UNAUTHORIZED=0
