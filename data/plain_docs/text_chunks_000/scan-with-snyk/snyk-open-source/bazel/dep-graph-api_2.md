The Test Dep Graph API takes a Snyk Dep Graph JSON object describing the root application and the graph of direct and transitive dependencies.
The schema for this format is as follows:

java
export interface DepGraphData {
  schemaVersion: string;
  pkgManager: {
    name: string;
    version?: string;
    repositories?: Array<{
      alias: string;
    }>;
  };
  pkgs: Array<{
    id: string;
    info: {
      name: string;
      version?: string;
    };
  }>;
  graph: {
    rootNodeId: string;
    nodes: Array<{
      nodeId: string;
      pkgId: string;
      info?: {
        versionProvenance?: {
          type: string;
          location: string;
          property?: {
            name: string;
          };
        },
        labels?: {
          [key: string]: string | undefined;
        };
      };
      deps: Array<{
        nodeId: string;
      }>;
    }>;
  };
}

Further notes on specific components in the Dep Graph object follow:

schemaVersion - the version of the Dep Graph schema. Set this to 1.2.0.
pkgManager.name - can be one of deb, gomodules, gradle, maven, npm, nuget, paket, pip, rpm, rubygems, or cocoapods.
pkgs - an array of objects containing id, nameandversion of all packages in the Dep Graph. Note that the id must be in the form name@version. List each of your dependencies in this array, including an item representing the Project itself.
graph.nodes - an array of objects describing the relationships between entries in pkgs. This is typically the Project node with all other packages defined as a flat array of direct dependencies in deps.
graph.rootNodeId - specifies the id of the entry in graph.nodes to use as the root node of the graph. Set this to the nodeId of the Project node.
