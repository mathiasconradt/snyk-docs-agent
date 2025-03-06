The editor window shows security vulnerabilities in open-source modules while you code in JavaScript, TypeScript, and HTML. Receive feedback in-line with your code, such as how many vulnerabilities a module that you are importing contains. The editor exposes only top-level dependency vulnerabilities; for the full list of vulnerabilities refer to the side panel.
You can find security vulnerabilities in the npm packages you import and see the known vulnerabilities in your imported npm packages as soon as you require them:
Vulnerabilities in npm package
Code inline vulnerability counts are also shown in your package.json file:
Results screen showing the vulnerability count
Find security vulnerabilities in your JavaScript packages from well-known CDNs (Content Delivery Networks). The extension scans any HTML files in your projects and displays vulnerability information about the modules you include from your favorite CDN.
Currently supported CDNs are:

unpkg.com
ajax.googleapis.com
cdn.jsdelivr.net
cdnjs.cloudflare.com
code.jquery.com
maxcdn.bootstrapcdn.com
yastatic.net
ajax.aspnetcdn.com

Vulnerability from a CDN
You can navigate to the most severe vulnerability by triggering the provided code actions. This opens a vulnerability window to show more details:
Code actions
