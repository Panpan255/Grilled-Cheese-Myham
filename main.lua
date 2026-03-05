splashy = require 'libs/splashy'

function love.load()
    print("debug mode is on") --comment this out on realse
    love.window.setMode(800,500)
    splashy.addSplash(love.graphics.newImage("images/test-splash.png"))
end

function love.draw()
    splashy.draw()
    love.graphics.print("hello world", 500, 300)
end

function love.update(dt)
    splashy.update(dt) -- this makes sure that splashscreeens can update
end
