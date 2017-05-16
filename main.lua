Gamestate = require "gamestate"
Timer = require "timer"
require "TESound"
game = require "game"

local main = {}

function love.load()
  if arg[#arg] == "-debug" then require("mobdebug").start()
  end
  Gamestate.registerEvents()
  Gamestate.switch(game)
end

function love.update(dt)
  Timer.update(dt)
  TEsound.cleanup()
end

function love.keypressed(key,scancode,isrepeat)
  if scancode == 'escape' then
    love.event.quit()
  end
end
