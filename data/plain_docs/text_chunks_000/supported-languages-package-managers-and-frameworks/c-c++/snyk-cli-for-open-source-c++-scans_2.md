For the CLI to be able to find dependencies in your source code, enough of the full dependencies source code must be present in the scanned folder.
Having a large percentage of files in their original (unchanged) form is critical to accurately identifying dependencies and reporting the correct set of vulnerabilities back. Modifying that source code reduces the confidence of the scanning engine, resulting in less accurate results. Other potential issues could include dependencies not being identified or being identified incorrectly, as a different version or even a different package.
The example that follows shows a typical package with dependencies listed:
c-example
├── deps
│   ├── curl-7.58.0
│   │   ├── include
│   │   │   ├── Makefile.am
│   │   │   ├── Makefile.in
│   │   │   ├── README
│   │   │   └── curl
│   │   ├── install-sh
│   │   ├── lib
│   │   │   ├── asyn.h
│   │   │   ├── base64.c
│   │   │   ├── checksrc.pl
│   │   │   ├── config-amigaos.h
│   │   │   ├── conncache.c
│   │   │   ├── conncache.h
│   │   ├── src
│   │   │   ├── tool_binmode.c
│   │   │   ├── tool_binmode.h
│   │   │   ├── tool_bname.c
│   │   │   ├── tool_xattr.c
...
