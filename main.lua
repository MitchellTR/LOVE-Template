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
