The authorization and callback controllers are comparatively simple. Create two new controller files:
bash
mkdir -p ./src/routes/auth;
mkdir -p ./src/routes/callback;
touch ./src/routes/auth/authController.ts
touch ./src/routes/callback/callbackController.ts
The AuthController handles authentication of the App via the previously described authorization flow. This is the third step of passport setup. Every controller class implements the controller interface which has two members: the path and the router.
This controller handles the /auth route, which is what we'll use to send users (via passport) to the Snyk website for authorization approval.
```typescript
// ./src/routes/auth/authController.ts
import type  from "../../interfaces/Controller";
import  from "express";
import passport from "passport";
class AuthController implements Controller {
  // The base URL path for this controller
  public path = "/auth";
  // Express router for this controller
  public router = Router();
constructor() {
    this.initRoutes();
  }
/*
   * The /auth route is called to authenticate the App
   * via Snyk using passportjs authenticate method
   /
  private initRoutes() {
    this.router.get($, passport.authenticate("snyk-oauth2"));
  }
}
export default AuthController;
```
Once a user approves authorization to our Snyk App via the Snyk website, the user is kicked back to our callback URI, /callback. We'll handle this route similarly, invoking passport again. This is the final step of user authorization.
The CallbackController accepts requests on /callback, but also creates two sub-routes, /callback/success and /callback/failure, to handle the different possible outcomes it might receive from Snyk.
```typescript
// ./src/routes/callback/callbackController.ts
import type  from '../../interfaces/Controller';
import type  from 'express';
import  from 'express';
export class CallbackController implements Controller {
  public path = '/callback';
  public router: Router = Router();
constructor() {
    this.initRoutes();
  }
private initRoutes() {
    // Path to handle the result of authentication flow or the callback/redirect_uri
    this.router.get($, this.passportAuthenticate());
    // Path to handle success, same as what we pass to passport
    this.router.get($/success, this.success);
    // Path to handle failure, same as what we pass to passport
    this.router.get($/failure, this.failure);
  }
private passportAuthenticate() {
    return passport.authenticate('snyk-oauth2', {
      successRedirect: '/callback/success',
      failureRedirect: '/callback/failure',
    });
  }
private success(req: Request, res: Response, next: NextFunction) {
    // return res.render('callback');
    return res.send('SUCCESS!');
  }
private failure(req: Request, res: Response, next: NextFunction) {
    // return next(new HttpException(401, 'Authentication failed'));
  }
}
export default CallbackController;
```
Before we're done, we need to make sure we add a reference to our new controllers in our index.ts.
```typescript
// ./src/index.ts
import IndexController from "./routes/index/indexController";
import AuthController from "./routes/auth/authController";
import CallbackController from "./routes/callback/callbackController";
import App from "./app";
new App([
   new IndexController(),
   new AuthController(),
   new CallbackController()],
  3000
);
```
