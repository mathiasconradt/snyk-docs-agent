Example: multiple repos to single image
For this scenario, there are two contributing repositories.
There is a front-end repository containing the package.json scanned by Snyk Open Source and a back-end repository containing go code scanned by Snyk Code. 
To map these associations, you would have the following tags set up:\
LocationAssetSnyk Project LocationTag(s)Notesgithub.com/my-team/front-endpackage.jsonSnyk Org: my-teamProject name: package.jsoncomponent=pkg:github/my-team/front-end@maingithub.com/my-team/back-endGo source codeSnyk Org: my-teamProject name: Codecomponent=pkg:github/my-team/back-end@mainBuilt container image called image-ASnyk Org: my-teamProject name: image-Acomponent=pkg:github/my-team/front-end@maincomponent=pkg:github/my-team/back-end@mainThe image has two tags applied, as there are two upstream dependencies which have different tags. You can apply multiple tags to an image.
