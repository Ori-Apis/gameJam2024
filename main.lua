bf = require("breezefield")

function love.load()
  love.window.setMode(1000, 800)

  world = bf.newWorld(0, 90.81, true)
  print(world:getGravity())
                                          --( x1, y1, x2, y2, x3, y3, ... clockwise a,b,c,d)
  ground = bf.Collider.new(world, "Polygon", {0, 780, 1000, 780 , 1000, 800, 0, 800})
  box = bf.Collider.new(world, "Polygon", {100, 200, 300, 200 , 300, 100, 100, 250})
end

function love.update(dt)
end

function love.draw()
  world:draw()
end