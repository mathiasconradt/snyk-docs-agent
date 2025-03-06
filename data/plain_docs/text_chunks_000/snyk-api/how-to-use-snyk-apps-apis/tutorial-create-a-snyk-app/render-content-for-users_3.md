Now that we have some basic templates, take a look at how we can add some functionality to our Snyk App using a User's Snyk data. For this tutorial, we set up our app to allow users to view all of their projects within Snyk from within our app.
This is a basic and easily extendable feature.
We need to create:

A new route controller
A function (or functions) to pull the project data
An EJS template for showing the projects

We start with the API work, using the callSnykApi() function we created in the previous module. Since this directly relates to a particular route, we'll store this file with its controller. Following the pattern we've used throughout these tutorial modules, we'll create both files at ./src/routes/projects/.
```typescript
// ./src/routes/projects/projectsHandler.ts
import  from "../../util/DB";
import  from "../../util/apiHelpers";
import  from "../../util/encrypt-decrypt";
import  from "../../interfaces/DB";
import  from "../../interfaces/API";
import  from "../../app";
/*
 * Get projects handler that fetches all user projects
 * from the Snyk API using user access token. This for
 * example purposes. In production it will depend on your
 * token scopes on what you can and can not access
 * @returns List of user project or an empty array
 /
export async function getProjectsFromApi(): Promise {
  // Read data from DB
  const db = await readFromDb();
  const data = mostRecent(db.installs);
  // If no data return empty array
  if (!data) return [];
// Decrypt data(access token)
  const eD = new EncryptDecrypt(ENCRYPTION_SECRET as string);
  const access_token = eD.decryptString(data?.access_token);
  const token_type = data?.token_type;
  // Call the axios instance configured for Snyk API v1
  const result = await callSnykApi(
    token_type,
    access_token,
    APIVersion.V1
  ).post(/org/$/projects);
return result.data.projects || [];
}
/*
 *
 * @param  installs get most recent install from list of installs
 * @returns the latest install or void
 /
export function mostRecent(installs: AuthData[]): AuthData | void {
  if (installs) {
    return installs[installs.length - 1];
  }
  return;
}
```
Next we'll write the route controller. Follow the pattern: ./src/routes/projects/projectsController.ts.
```typescript
// ./src/routes/projects/projectsController.ts
import type  from "../../interfaces/Controller";
import type  from "express";
import  from "express";
import  from "./projectsHandler";
export class ProjectsController implements Controller {
  // The base URL path for this controller
  public path = "/projects";
  // Express router for this controller
  public router = Router();
constructor() {
    this.initRoutes();
  }
private initRoutes() {
    // The route to render all user projects lists
    this.router.get($, this.getProjects);
  }
private async getProjects(req: Request, res: Response, next: NextFunction) {
    try {
      const projects = await getProjectsFromApi();
      return res.render("projects", {
        projects,
      });
    } catch (error) {
      return next(error);
    }
  }
}
```
Whenever we add a new route controller, we need to update ./index.ts to include it.
```typescript
// ./src/index.ts
import IndexController from "./routes/index/indexController";
import AuthController from "./routes/auth/authController";
import CallbackController from "./routes/callback/callbackController";
import ProjectsController from "./routes/projects/projectsController";
import App from "./app";
new App([
   new IndexController(),
   new AuthController(),
   new CallbackController()
   new ProjectsController()],
  3000
);
```
