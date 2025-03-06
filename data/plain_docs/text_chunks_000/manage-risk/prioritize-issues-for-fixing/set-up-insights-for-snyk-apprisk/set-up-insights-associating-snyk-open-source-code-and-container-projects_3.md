Single repo to a single image
In this example, there is a single repository containing your package.json which is built into an image called image-A.
Example: single repo to single image
To map these associations, you would have the following tags set up:
LocationAssetSnyk Project LocationTag(s)Notesgithub.com/my-team/front-endpackage.jsonSnyk Org: my-teamProject name: package.jsoncomponent=pkg:github/my-team/front-end@mainThe same tag is applied to both sidesBuilt container image called image-ASnyk Org: my-teamProject name: image-Acomponent=pkg:github/my-team/front-end@main
