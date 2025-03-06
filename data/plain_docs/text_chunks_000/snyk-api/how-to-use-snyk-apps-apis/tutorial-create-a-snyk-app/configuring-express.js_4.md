So far, we've created an App class that, when instantiated, will run an Express server that responds to requests at / and we've added an interface definition to ensure all our controllers follow the same data pattern.
Let's run our project and try it out!
If you run the compiled ./dist/app.js at this point, nothing interesting happens. This is because we've yet to instantiate our exported class. In the previous module, we initialized our package.json. During that command, we were presented with questions pertaining to our app. One of the questions asked what our project's entrypoint was. If you were following along and selected the default value, this should be set to index.js in your package.json. This entrypoint is where we'll instantiate the App class.
Edit ./src/index.ts (where we had that hello world code) and clear it out if there's any content left over, then add import statements for our App and other required objects.
Our entrypoint will only do one thing, instantiate the App class with the new keyword:
```typescript
import IndexController from './routes/indexController';
import App from './app';
new App(
  [
    new IndexController()
  ],
  3000
);
```
That's it!
Build the project using npx tsc then run the compiled entrypoint with node:
bash
npx tsc && node ./dist/index.js
Provided everything was successful, you'll see the message App listening on port: 3000 in the console.
Now visit http://localhost:3000 in your browser or use curl to check the response. If you see index route!, then congratulations! Express is serving the application and responding to routes!
In the next module of this tutorial, we'll dive deeper into routes and authentication and start working with the Snyk API.
