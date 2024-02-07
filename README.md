# Paystack Sample Express Backend

This is a simple [Express](https://expressjs.com/) app that you can use to run a backend for initializing transactions on Paystack. To get started, you can choose from the following options:

1. [Run it on a free Render account](#running-on-render)
2. [Run it on Heroku](#running-on-heroku)
3. [Run it locally on your machine](#running-locally-on-your-machine)
4. [Run it locally via Docker CLI](#running-locally-with-docker)

ℹ️  You also need to obtain your Paystack **secret, test mode** API Key, available in the [Dashboard](https://dashboard.paystack.com/#/settings/developers). Note that you must use your secret key, not your public key, to set up the backend. For more information on the differences between **secret** and public keys, as well as test and live mode, see [our help centre article](https://support.paystack.com/hc/en-us/articles/360009881600-Paystack-Test-Keys-Live-Keys-and-Webhooks).

## Running the app

### Running on Render

1. Set up a free [Render account](https://dashboard.render.com/register).
2. Click the button below to deploy the example backend. You'll be prompted to enter a name for the Render service group as well as your Paystack API key.
3. Go to the [next steps](#next-steps) in this README for how to use this app

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/paystackoss/sample-express-backend/)

### Running on Heroku

1. Set up a [Heroku account](https://signup.heroku.com).
2. Click the button below to deploy the example backend. You'll be prompted to enter a name for the Heroku application as well as your Stripe API key.
3. Go to the [next steps](#next-steps) in this README for how to use this app

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/paystackoss/sample-express-backend)

### Running locally on your machine

If you prefer running the backend locally, ensure you're using at least Node version 20.

Clone down this repo to your computer, and then follow the steps below:

1. Rename the file named `.env.example` to `.env` within the newly cloned repo directory and add your Paystack secret key:
```
PAYSTACK_SECRET_KEY={YOUR_API_KEY}
```
2. In your terminal, run `npm install`
3. Run `npm start`
4. The example backend should now be running at `http://localhost:5001`
5. Go to the [next steps](#next-steps) in this README for how to use this app

### Running locally with Docker

We have a pre-built Docker image you can run locally if you're into the convenience of containers.

 Install [Docker Desktop](https://www.docker.com/products/docker-desktop) if you don't already have it. Then follow the steps below:

1. In your terminal, `cd` into the cloned repo and run `docker build -t sample-backend .`.
2. Run `docker run -e PAYSTACK_SECRET_KEY={YOUR_API_KEY} -p 5001:5001 sample-backend`
2. The sample backend should now be running at `http://localhost:5001`
3. Go to the [next steps](#next-steps) in this README for how to use this app

---

## Next steps

### Set your webhook URL

In order to receive notifications for successful transactions, you'll need to set your webhook URL on your Paystack dashboard.

**Render**

1. Find the URL of your Render web service on the service's dashboard
2. Set your webhook URL [on your Paystack dashboard]() to {YOUR_RENDER_SERVICE_URL}/webhook.

**Heroku**

1. Find the URL of your Heroku app on the app's Settings page (under Domains)
2. Set your webhook URL [on your Paystack dashboard]() to {YOUR_HEROKU_APP_URL}/webhook.

**Local**

1. Your Paystack Webhook URL has to be an `https` URL, so you'll need to use a service like [ngrok's `http` endpoints](https://ngrok.com/docs/http/#overview) to generate an `https` URL and tunnel requests to your local machine. This is out of the scope of this tutorial, but the ngrok documentation shows how to do this.
2. Once you've obtained your ngrok `https` URL, set your webhook URL [on your Paystack dashboard]() to {YOUR_NGROK_URL}/webhook.

**Docker**
1. Follow the same instructions under [Local](#docker)

First, set your webhook URL on your Paystack dashboard. This will ensure your server receives notifications for successful transactions. 

Next, make an API call to the server passing `email`, `amount`, and any other [optional parameters](https://paystack.com/docs/api/transaction/#initialize)

⚠️ **Note that this backend is intended for example purposes only**. Because endpoints are not authenticated, you should not use this backend in production.
