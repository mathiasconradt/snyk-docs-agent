With our passport strategy implemented, modify app.ts to set up the passport middleware as shown in the next code block. Rather than calling it directly, we'll create a function called initGlobalMiddlewares() allowing us to set up a few other middlewares at the same time:

express.json(): Express middleware for handling JSON requests
express.urlencoded(): Express middleware to handle URL-encoded calls
expressSession: The express-session middleware package which is extended by passport
setupPassport: To initialize passport setup

```typescript
// ./src/app.ts
...
import passport from "passport";
import  from "./util/OAuth2Strategy";
...
constructor(controllers: Controller[], port: number) {
  ...
  this.initDatabaseFile();
  this.initGlobalMiddlewares();
  this.initRoutes(controllers);
  ...
}
...
private setupPassport() {
  passport.use(getOAuth2());
  this.app.use(passport.initialize());
  this.app.use(passport.session());
  passport.serializeUser((user: Express.User, done) => {
    done(null, user);
  });
  passport.deserializeUser((user: Express.User, done) => {
    done(null, user);
  });
}
private initGlobalMiddlewares() {
  this.app.use(express.json());
  this.app.use(express.urlencoded());
  this.app.use(
    expressSession({
      secret: uuid4(),
      resave: false,
      saveUninitialized: true,
    })
  );
  this.setupPassport();
}
...
```
