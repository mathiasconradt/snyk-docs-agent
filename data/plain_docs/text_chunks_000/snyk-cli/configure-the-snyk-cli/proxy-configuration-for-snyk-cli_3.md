On non-Windows operating systems, Snyk CLI also supports SSO but, in addition, must be configured with the following environment variables.
bash
KRB5_CONFIG # default "/etc/krb5.conf"
KRB5CCNAME # default "FILE:/tmp/krb5cc_<UserUID>"
The use of these variables follows the MIT Kerberos implementation:

KRB5_CONFIG - Kerberos configuration file
KRB5CCNAME - Kerberos credential cache
Currently, the only supported credential cache type (ccache types) is FILE.
It is important to note that the cache file cannot be updated by the CLI. This means that the cache file must be updated externally, for example, by running kinit.,
