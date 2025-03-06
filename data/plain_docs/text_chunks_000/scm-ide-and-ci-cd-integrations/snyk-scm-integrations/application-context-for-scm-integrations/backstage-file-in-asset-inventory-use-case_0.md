After you finish configuring the Backstage catalog, Snyk Essentials starts enriching your repository assets (the All Assets tab from the Inventory layout) with the data found in the backstage catalog-info.yaml file.
Use the Backstage catalog to enrich the repository assets and to define the component entity. For this type of situation, a component is defined as a software component, like a service, repository, website, library, and so on. 
Components have several attributes and most of them are optional:

spec.type (mandatory) - represents the classification of the repository. 
spec.owner (mandatory) - represents the team owning the repository.
spec.lifecycle - represents the lifecycle state of the component, for example production, experimental, deprecated.
spec.system (optional) - represents a group of components that serve the same purpose. This concept is referred to as “Application”.
Metadata.name (mandatory) - represents the name of the component.
Metadata.title (optional) - represents the name of the component.

The Backstage data is dynamic and may change over time:

If new commits or updates are made on the catalog-info.yaml file, then Snyk Essentials updates the asset attribute for that specific repository asset.
If thecatalog-info.yaml file is removed from the repository, then Snyk Essentials deletes the asset attribute from that specific repository assets.


You can use quotes ("") to escape keys that contain periods (.), for example"example.com".owner.
