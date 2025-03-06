Follow these steps configure an integration for OIDC Okta.
Create an Okta OIDC app


In Okta, select Applications -> Applications -> Create App Integration then choose OICD OpenID Connect and Web Application.
Create a new app integration in Okta
2.  In the next step add an App integration name for your OIDC application, check the Implicit Grant Type and add the Sign-in redirect URI relevant to your Snyk platform deployment. Remove the placeholder Sign-out redirect URI and choose your assignment access control before clicking Save.
Provide details for new web app integration
3. On the application page that opens after saving, copy the details as per OIDC information to provide to Snyk following details and provide to your Snyk contact:
   * Client ID
   * If you are not using Implicit Grant type, the client secret
4. Also share with Snyk the Issuer URL/domain. This is typically the URL you find in your browser address bar without "-admin", for example, https://customer.example.okta.com. It can also be found under the Sign-On tab of your application by editing the OpenID Connect ID Token from Dynamic Issuer to Okta URL.


If you wish to set up custom mapping, move on to the next section of this guide.
