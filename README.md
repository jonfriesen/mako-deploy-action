# GitHub Action for deploying to Mako
Warning: This is a prototype for testing a specific experiecne and should not be used by anyone.

### Required Environment Variables
#### Below should be secrets
    - `APP_NAME` app name for deployment
    - `APP_DEPLOYMENT` staging name (eg. staging) set to default for no staging
    - `MAKO_AUTH` Your Mako auth token (https://mako.digitalocean.com/go/auth)

### Example

```
- name: Deploy App to Mako
      uses: jonfriesen/mako-deploy-action
      env:
        APP_NAME: nodejs-demo
        APP_DEPLOYMENT: staging
        MAKO_AUTH: ${{ secrets.MAKO_AUTH }}
```