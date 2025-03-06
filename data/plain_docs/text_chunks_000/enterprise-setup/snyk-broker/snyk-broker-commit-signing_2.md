To use commit signing, provide the following environment variables for the Broker Client:
GPG_PRIVATE_KEY: GPG private key exported as an ASCII armored version. Note that the value must start with -----BEGIN PGP PRIVATE KEY BLOCK----- and end with -----END PGP PRIVATE KEY BLOCK-----.
GPG_PASSPHRASE: Passphrase of the GPG private key.
GIT_COMMITTER_NAME: will be used to set a committer name.
GIT_COMMITTER_EMAIL: will be used to set a committer email.
Enable Broker Client Commit Signing in the Snyk Preview settings.
