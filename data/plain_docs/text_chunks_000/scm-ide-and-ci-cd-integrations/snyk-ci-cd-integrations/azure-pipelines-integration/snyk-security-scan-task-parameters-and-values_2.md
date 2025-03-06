Parameter: testType\
Required: Yes\
Default: application\
Type: string: "app" or "container" or "code"
Description: Determines the type of testing to perform, which also selects the dynamic fields to display as described on the rest of this page. 

Specifying "app" will perform analysis of your application's open-source dependencies (SCA)
Specifying "container" will analyze container packages and detected application open-source packages (SCA)
Specifying "code" will perform static analysis (SAST) on source code.
