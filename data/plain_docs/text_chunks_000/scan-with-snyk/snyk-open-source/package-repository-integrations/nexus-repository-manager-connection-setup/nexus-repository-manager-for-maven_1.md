If authentication is required to access your Nexus registry, you must first configure the Nexus Repository Manager integration. See Nexus Repository Manager setup.
You can choose to use Nexus as a mirror or as an additional repository where your artifacts will reside.
These settings are very similar to what you have in ~/.m2/settings.xml.
Set up for Mirrors
Choose a value for the Type, either Direct or, if you are using using authentication, Integration.
If you are using Direct, you must complete the URL, Repository Name and what it is a Mirror Of.
The Mirror Of value can either be a * to mirror everything, or you can type in a value, for example,central.
If you are using Type Integration, you must choose the Nexus integration type and provide the Repository Name and Mirror Of details.
Set Repository Name according to your version of Nexus.


Set Repository Name as whatever comes after repository/ in the internal repository URL.
For example, if the URL is http://nexus.company.io/repository/libs-release , Repository Name should be set as libs-release.


Set Repository Name as whatever comes after nexus/content/ in the internal repository URL.
For example, if the URL is http://nexus.company.io/nexus/content/groups/public, Repository Name should be set as groups/public.
If the URL is http://nexus.company.io/nexus/content/repositories/releases, Repository Name should be set as repositories/releases.


Alternatively, you can configure repositories  will be used as additional locations to check for artifacts.
Repositories are configured in the same way as Mirrors, but do not require Mirror Of.
