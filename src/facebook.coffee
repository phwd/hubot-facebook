{Robot, Adapter, TextMessage} = require 'hubot'
{EventEmitter}                = require 'events'

fb                            = require 'fb'

class Facebook extends Adapter
  send: (envelope, strings...) ->
     strings.forEach (str) =>
       text = str
       @bot.post(str)

  run: ->
    self = @

    options =
      token       : process.env.HUBOT_FACEBOOK_TOKEN

    bot = new FacebookGraph(options, @robot)

    @bot = bot
   
    self.emit "connected"

exports.use = (robot) ->
  new Facebook robot

class FacebookGraph extends EventEmitter
  
  constructor: (options, @robot) ->
    if options.token?
      @token         = options.token
      fb.setAccessToken(@token)
    else
      throw new Error("Not enough parameters provided. I need a page access token")

  post : (fbmessage) ->
    console.log "send post with text #{fbmessage}"
    fb.api 'me/feed', 'post' , { message: fbmessage}, (res) -> 
      if not res or res.error
        errormsg = if not res 'error occured' else res.error
        console.log errormsg

