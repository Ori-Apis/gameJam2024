function love.load()

  HC = require 'lib/HC'
  mouse = HC.rectangle(300,400,40,40)
  mouse:moveTo(love.mouse.getPosition())
end

function love.update(dt)
  mouse:moveTo(love.mouse.getPosition())
end

function love.draw()
  mouse:draw()
end
