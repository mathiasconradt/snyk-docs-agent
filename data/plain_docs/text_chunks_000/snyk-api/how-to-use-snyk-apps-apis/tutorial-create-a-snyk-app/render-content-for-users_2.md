The first template we'll create is a partial one, which we'll include in the other templates. This header.ejs will be the place we link stylesheets and other information that belong in the <head> of an HTML document.
```ejs
// ./views/partials/header.ejs
html










Snyk Apps Tutorial


```
This index.ejs template will cover our basic / route.
```ejs
// ./views/index.ejs
<%- include('./partials/header.ejs') %>




Add Demo App
Authorize this App to connect to your Snyk account.
Install App



```
callback.ejs will render for successful user authorizations.
```ejs
// ./views/callback.ejs
<%- include('./partials/header.ejs') %>


Snyk Apps Tutorial





Successfully connected to Snyk!

List Projects




```
These templates should be enough to get you started adding your own templates to any new routes you create. If you intend to continue using EJS, refer to the documentation for information about the features offered.
Rendering content for your Snyk App can be as simple or complex as you'd like it to be. Because we're dealing with JavaScript, the options are very flexible!
