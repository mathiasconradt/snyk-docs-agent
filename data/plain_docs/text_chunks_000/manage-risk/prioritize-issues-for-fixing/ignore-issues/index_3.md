Each issue card has an Ignore button that opens a dialog where you can select how or why you want to ignore the issue and how long to ignore it.
Ignore dialog from issue card
You can select Not vulnerable for any issue that is not exploitable at the time you create the ignore.
If you select Ignore temporarily, then you can check the Until fix is available checkbox:
Ignore temporarily
This is checked by default if no fix is available for the issue. The vulnerability resurfaces as soon as Snyk has a fix for it, and optionally you can provide additional details on why you are ignoring the issue.

An issue is ignored until either of these conditions occurs: the ignore period expires, or the vulnerability becomes fixable.
An issue ignored in an Open Source or Code Project in the Snyk web UI will be reflected and not flagged in any subsequent PR checks across all branches of the Project.

When you ignore an issue in the Snyk Web UI, the issue shows who ignored it and allows you to edit the ignore or unignore the issue.
Ignore set in the Snyk Web UI
For more information, see the training: Ignoring issues.
