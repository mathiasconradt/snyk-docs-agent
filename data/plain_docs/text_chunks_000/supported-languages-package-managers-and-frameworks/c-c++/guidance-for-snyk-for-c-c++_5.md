For C/C++ open source, use the --unmanaged option to analyze license compliance issues and known security issues associated with open source.
snyk test --unmanaged
See Snyk for C/C++ for details.

To test, ensure the open source source code is present; it may be placed in a vendor folder. 
If you precompile open source, the open source code must still be present. For Snyk to make an accurate comparison with its existing knowledge base, the open source code must remain present.

Similarly, for monitoring and sharing reporting, use the following command:
snyk monitor --unmanaged --org=<org-id>
where org-id is found under your Organization settings in the Snyk web interface, Although the Organization ID is not required, it is strongly recommended that you use it. As with Snyk Code, you can generate reports using the snyk-to-html plugin to generate reporting artifacts. 

For individual or personal scans, use the CLI or IDE, and use the snyk monitor --unmanaged command to upload results.
However, Snyk recommends that you send these results to your personal folder and disable the scheduled scanning in the Project settings to ensure an individual scan does not cause noise. 
This provides license and policy information in a viewable state.
For automated scans, such as CI/CD, use snyk monitor --unmanaged and send results to the Organization of your choice. This provides license and policy information in a viewable state.
