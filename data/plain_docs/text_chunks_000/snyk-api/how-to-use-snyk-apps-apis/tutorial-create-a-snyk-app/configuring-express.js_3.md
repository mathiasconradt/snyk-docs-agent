Express will listen to any request on our given port, but it doesn't know what to do when it receives a request. We need to tell Express how to handle the various types of requests it might receive. How you configure this depends heavily on the architecture of your application, and which routes / pages you expect your app to respond to when hit.
For this tutorial, we'll keep things simple. Since our end goal is to provide users with a list of their projects within Snyk, assume we'll want at least two routes: an index route (/) to handle any initial connections and a projects route (/projects) to present the data from Snyk.
To keep our project organized, we'll create a routes directory to house our collection of routes and we'll give each route its own subdirectory which will contain the main controller file for the route and any extras we might need.
We'll focus on the index route for this module:
bash
mkdir -p ./src/routes/index
touch ./src/routes/index/indexController.ts
Before we start working on the index controller, we should also create a TypeScript interface definition to describe a common shape for controller data. This will help keep our controllers consistent and allow TypeScript to warn us early if a controller is missing something important.
Let's use a similar separation pattern to the one we decided on for routes. Since interface definitions in TypeScript are typically self-contained and descriptive, we'll skip creating a directory for each definition and store any interface files we create as siblings:
bash
mkdir -p ./src/interfaces
touch ./src/interfaces/Controller.ts
Any route controller we create should at the very least take a path value and a router from Express. Edit ./src/interfaces/Controller.ts and populate it with the content below.
```typescript
import type  from 'express';
export interface Controller {
  path: string;
  router: Router;
}
```
With that done, open the route controller file ./src/routes/index/indexController in your editor and add the following:
```typescript
import type  from '../../interfaces/Controller';
import type  from 'express';
import  from 'express';
class IndexController implements Controller {
  public path = '/';
  public router = Router();
constructor() {
    this.initRoutes();
  }
private initRoutes() {
    this.router.get($, this.indexPage);
  }
private indexPage(req: Request, res: Response, next: NextFunction) {
    return res.send('index route!');
  }
}
export default IndexController;
```
Here we've imported a handful of TypeScript type/interface definitions as well as the Router object from the Express package.
We've set our IndexController to respond to / requests with the indexPage function, which renders 'index', but our App class doesn't yet have a way to register the route when it instantiates. Let's go back to our ./src/app.ts file and add an initRoutes() function to establish that.
We'll also modify the App's constructor function to take an array of Controllers and a port value as arguments.
Edit ./src/app.ts and update the contents to match the following:
```typescript
import express from 'express';
import type  from 'express';
import type  from 'http';
import type  from './interfaces/Controller';
class App {
  public app: Application;
  private server: Server;
constructor(controllers: Controller[], port: number) {
    this.app = express();
    this.initRoutes(controllers);
    this.server = this.listen(port);
  }
private initRoutes(controllers: Controller[]) {
    controllers.forEach((controller: Controller) => {
      this.app.use('/', controller.router);
    });
  }
private listen(port: number) {
    this.server = this.app.listen(port, () => {
      console.log(App listening on port: $);
    });
return this.server;

}
}
export default App;
```
