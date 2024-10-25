function love.load()

  HC = require 'lib/HC'

  player = {}

  player.x = 200
  player.y = 100

  player.speed = 5
  player.width = 100
  player.height = 100
  player.hitbox = HC.rectangle(300,400,40,40)
  
end

function love.update(dt)

  if love.keyboard.isDown('left') then
    player.x = player.x - player.speed
  end

  if love.keyboard.isDown('right') then
    player.x = player.x + player.speed
  end

  if love.keyboard.isDown('up') then
    player.y = player.y - player.speed
  end

  if love.keyboard.isDown('down') then
    player.y = player.y + player.speed
  end
  
end

function love.draw()
  mouse:draw()
end
