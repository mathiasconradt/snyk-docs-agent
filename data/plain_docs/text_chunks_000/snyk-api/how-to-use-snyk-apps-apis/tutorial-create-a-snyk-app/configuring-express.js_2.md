This tutorial makes use of Object-oriented programming (OOP) concepts. If you aren't familiar with OOP, refer to this MDN page for a brief primer.

To begin, create a new file to house the application code we'll be working on in this portion of the tutorial. If you've just come from the previous module where we configured a simple 'Hello world' app, you can leave your index.ts file alone; we'll come back to it.
bash
touch ./src/app.ts
Add an import statement for Express and its TypeScript type / interface definitions at the top of the new file (./src/app.ts), then create an App class to house all the related functions and configuration required to run our application.
The class constructor will initialize Express on port 3000 when the class is instantiated. We'll create a private function listen() for the constructor to call which will handle the actual start of the Express server.
Don't forget to export the class at the bottom, we'll need it later.
```typescript
import express from 'express';
import type  from 'express';
import type  from 'http';
class App {
  public app: Application;
  private server: Server;
constructor() {
    this.app = express();
    this.server = this.listen(3000);
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
Test the new file using npx tsc and ensure an app.js file is successfully created in the ./dist directory. If there are no errors, great! You're ready to start adding routes.
