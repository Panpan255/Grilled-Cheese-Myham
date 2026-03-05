function love.load()
    print("debug mode is on") --comment this out on realse
    
    love.window.setMode(800,500)
end

function love.draw()
    love.graphics.print("hello world", 500, 300)
end
