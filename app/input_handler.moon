class InputHandler

  key_down: (key) =>
    if @is_quit_sequence key
      Game.quit!
    else
      print "key dn: #{key}"

  key_up: (key) =>
    print "key up: #{key}"

  is_quit_sequence: (key) =>
    key == 'escape' and
      (@is_pressed('lshift') or @is_pressed('rshift'))

  is_pressed: (key) =>
    love.keyboard.isDown key
