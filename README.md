# Paystack Sample Mobile Backend

This is a simple [Express](https://expressjs.com/) app that you can use to run a backend for initializing transactions to complete via the Paystack mobile SDKs. To get started, you can choose from the following options:

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

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/paystackoss/sample-mobile-backend/)

### Running on Heroku

1. Set up a [Heroku account](https://signup.heroku.com).
2. Click the button below to deploy the example backend. You'll be prompted to enter a name for the Heroku application as well as your Stripe API key.
3. Go to the [next steps](#next-steps) in this README for how to use this app

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/paystackoss/sample-mobile-backend)

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

1. In your terminal, run `docker run -e STRIPE_TEST_SECRET_KEY={YOUR_API_KEY} -p 4567:4567 stripe/example-terminal-backend` (replace `{YOUR_API_KEY}` with your own test key)
2. The sample backend should now be running at `http://localhost:5001`
3. Go to the [next steps](#next-steps) in this README for how to use this app

---

## Next steps

First, set your webhook URL on your Paystack dashboard. This will ensure your server receives notifications for successful transactions. 

Next, make an API call to the server passing `email`, `amount`, and any other [optional parameters](https://paystack.com/docs/api/transaction/#initialize)

⚠️ **Note that this backend is intended for example purposes only**. Because endpoints are not authenticated, you should not use this backend in production.
