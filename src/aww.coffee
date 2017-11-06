# Description:
#   Reddit Aww integration with Hubot
#
# Dependencies:
#   Lodash
#
# Configuration:
#   None
#
# Commands:
#   hubot aww me - Returns a random image from /r/aww
#
# Author:
#   waynegraham

lookup_site = "https://www.reddit.com/r/aww.json"

module.exports = (robot)->
  robot.respond /aww( me)?/i, (message)->
    msg.http(lookup_site).get() (err, res, body)->
      try
        data = JSON.parse.body
        children = data.data.children
        post = msg.random(children).data
        msg.send "#{post.title} - #{post.url}"
      catch error
        msg.send "Meh, something went WAY wrong - #{ex}"
