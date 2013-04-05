# Hubot Facebook Adapter

## Description

This is the [Facebook](http://facebook.com) adapter for hubot that allows you to
post to Facebook from your hubot. Currently commands are not available yet. You
can see it in action at https://www.facebook.com/pages/Phwdbot/250958741707693

## Installation

* Add phwd hubot-facebook git as a dependency in your hubot's `package.json`
* Run hubot with `bin/hubot -a facebook -n id_of_the_facebook_bot_account`

(e.g. phwdbot's id is 250958741707693)

### Note if running on Heroku

You will need to change the process type from `app` to `web` in the `Procfile`.

## Usage

You will need to set some environment variables to use this adapter. Specifically
a page access token after extending a user access token, this will ensure you
don't have to check expiry as page tokens don't expire.

### Heroku

   heroku config:add HUBOT_FACEBOOK_TOKEN="token
 
### Non-Heroku environment variables

   export HUBOT_FACEBOOK_TOKEN="token"

## Contribute

Just send pull request if needed or fill an issue !

## Copyright

Copyright &copy; Philippe Harewood

