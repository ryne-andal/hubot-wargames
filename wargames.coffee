# Description:
#   Hubot interaction based on the movie Wargames (http://www.imdb.com/title/tt0086567/)
#
# Dependencies:
#   None
#
#
# Commands:
#   speak me <phrase> - Detects the language 'phrase' is written in, then sends back a spoken version of that phrase
#
# Author:
#   ryne-andal

module.exports = (robot) ->
  quotes = [
    "A strange game. The only winning move is not to play. How about a nice game of chess?"
    "Shall we play a game?"
    "Wouldn't you prefer a good game of chess?"
    "Fine."
    "To win the game."
    "You should know, Professor. You programmed me."
    "What's the difference?"
  ]

  regex = /(wargames)/i
  robot.hear regex, (msg) ->
     msg.send msg.random quotes