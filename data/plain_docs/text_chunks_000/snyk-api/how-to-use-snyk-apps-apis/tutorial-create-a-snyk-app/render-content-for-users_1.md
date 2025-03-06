While Express is perfectly capable of printing content to the screen and even rendering HTML server-side, life is much easier when using a template engine. For this tutorial we are using EJS.
First, install the node packages needed in this part of the tutorial:
bash
npm install --save ejs
Next, modify the initGlobalMiddlewares() function we created in our last module to tell express that we want to use a view engine, EJS in this case, and let it know where we'll be storing our view templates. We'll be storing our EJS templates in ./src/views and keeping any common files such as images and CSS in /.src/public.
Create the new directories first.
bash
mkdir -p ./src/views/partials
mkdir -p ./src/public
Now we can update ./src/app.ts:
```typescript
// ./src/app.ts
...
class App {
...
private initGlobalMiddlewares() {
...

this.app.set("views", path.join(__dirname, "/views"));
this.app.set("view engine", "ejs");
this.app.use('/public', express.static(path.join(__dirname, '/public')));

...

}
...
}
```
For each route that we'll provide a template for, we'll need to modify the corresponding controller and ensure that we're using res.render("<template name>") rather than something more simplistic like res.send().
Example:
```typescript
...
private initRoutes() {
  this.router.get($, this.indexPage);
}
private indexPage(req: Request, res: Response, next: NextFunction) {
  // THIS right here is what causes Express to render the EJS template.
  return res.render("index");
}
...
```
That's all there is to it.
EJS templates support the concept of partial inclusion. While not strictly necessary, it makes sense to add a subdirectory to our ./src/views to differentiate partial templates like headers and footers from route templates. For the tutorial, we'll use ./src/views/partials to store such templates.
