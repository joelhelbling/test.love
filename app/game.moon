InputHandler = require 'app/input_handler'

class Game
  quit: =>
    love.event.quit!

  start: ->
    @input_handler = InputHandler @

    love.keypressed = (key) =>
      InputHandler\key_down key

    love.keyreleased = (key) =>
      InputHandler\key_up key

    love.update = ->

    love.draw = ->
      love.graphics.print "Hello, World!", 50, 50
