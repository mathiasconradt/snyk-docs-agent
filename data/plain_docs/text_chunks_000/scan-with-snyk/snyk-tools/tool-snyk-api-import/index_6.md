Error: ENFILE: file table overflow, open or Error: EMFILE, too many open files

If you see these errors, you may need to bump **ulimit** to allow more open file operations. In order to keep the operations performing well, the tool logs as soon as it is convenient rather than waiting until the very end of a loop and logging a huge data structure. This means that depending on the number of concurrent imports set, the tool may exceed the system default **ulimit**.

Some of these resources may help you bump the **ulimit**:

* [ss64.com](https://ss64.com/bash/ulimit.html)
* [StackOverflow](https://stackoverflow.com/questions/45004352/error-enfile-file-table-overflow-scandir-while-run-reaction-on-mac)
* [blog.mact.me](http://blog.mact.me/2014/10/22/yosemite-upgrade-changes-open-file-limit)



ERROR: HttpError: request to https://github.private.com failed, reason: self signed certificate in certificate chain

If your GitHub, GitLab, Bitbucket, or Azure instance is using a self-signed certificate, you can configure `snyk-api-import` to use this certificate when calling the HTTPS APIs.

`export NODE_EXTRA_CA_CERTS=./path-to-ca`



Does this work with brokered integrations?

Yes. Because Snyk reuses the existing integration with your SCM (Git) repository to perform the imports, the brokered connection will be used when configured.



What is supported for the import command?

`snyk-api-import` supports all of the same integration types and Project sources as identified in the [Import API](../../../snyk-api/reference/import-projects-v1.md) documentation. If an example for your use case is not in these instructions, see the API documentation.
