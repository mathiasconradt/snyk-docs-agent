If the vulnerability condition matches the operating system used by the runtime environment or if there is no condition, meaning that the vulnerability applies to all operating systems, the OS Condition risk factor is generated.
| OS condition value | Runner OS value | Result                 |
| ------------------ | --------------- | ---------------------- |
| Any OS             | Unknown         | No risk factor         |
| Linux              | Unknown         | No risk factor         |
| Windows            | Unkown          | No risk factor         |
| Any OS             | Linux           | Risk factor identified |
| Linux              | Linux           | Risk factor identified |
| Windows            | Linux           | No risk factor         |
| Any OS             | Windows         | Risk factor identified |
| Linux              | Windows         | No risk factor         |
| Windows            | Windows         | Risk factor identified |
When an image is scanned by Snyk Container, the information about which operating system the base of the image is running on is exposed. Therefore, whenever Snyk Issues can determine that a package is a dependency of the image or that the package has been included in the image, it compares the vulnerability information with the image specification. The same applies to problems identified directly in the image entity.
