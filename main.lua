splashy = require 'libs/splashy'

function love.load()
    print("debug mode is on") --comment this out on realse
    splashy.addSplash(love.graphics.newImage("images/test-splash.png"))
    love.window.setMode(800,500)
end

function love.draw()
    splashy.draw()
    love.graphics.print("hello world", 500, 300)
end
