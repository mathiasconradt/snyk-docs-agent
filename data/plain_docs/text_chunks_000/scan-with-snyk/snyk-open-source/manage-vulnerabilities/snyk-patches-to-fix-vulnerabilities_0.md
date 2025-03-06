Introduction to patches
Sometimes there is no direct upgrade that can address the vulnerability, or an upgrade is not possible due to functional reasons, for example, the upgrade is a major breaking change.
In such cases, Snyk can help you protect your code with patches. This option will make minimal modifications to your locally installednode_modules files to fix the vulnerability. It will also update the policy to patch this issue when you use @snyk/protect.

Patching is currently supported for Node.js Projects only.

Patches are applicable in the following scenarios:

When there is no upgrade available for the direct dependency.
When there is no way of upgrading a direct dependency to get to a vulnerability-free version of a transitive dependency.
When an upgrade would render the package incompatible with the current codebase.

Patches are available through the source code integrations and @snyk/protect.
