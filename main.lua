splashy = require 'libs/splashy'

local screenWidth
local screenHeight


function love.load()
    print("debug mode is on") --comment this out on realse
    screenWidth, screenHeight = love.graphics.getDimensions()
    print ("screen size", screenWidth, screenHeight) -- comment out this is debug
    if screenWidth == 1280 and screenHeight == 720 then
        splashy.addSplash(love.graphics.newImage("images/widescreen/love-splash.png")) -- this loades splash screen for 720p(1280x720)
        print("splash screen for Widescreen is setup") -- comment out later this is for debug
    elseif screenWidth == 800 and screenHeight == 500 then
        print("splash screen for Mini setup") -- comment out later this is for debug
        splashy.addSplash(love.graphics.newImage("images/Mini/love-splash.png")) -- this loades the splash for 800x500
    elseif screenWidth == 1920 and screenHeight == 1080 then
        splashy.addSplash(love.graphics.newImage("images/HD/love-splash.png")) -- splash for 1920 by 1080
        print("slpash screen for HD is setup") -- comment out later this is for debug
    end
    


    --love.window.setMode(800,500) -- this sets the screen size to 800 by 500
    --splashy.addSplash(love.graphics.newImage("images/test-splash.png")) --test image may need to be commented out for rest to work
end

function love.update(dt)
    splashy.update(dt) -- this makes sure that splashscreeens can update
end


function love.draw()
    splashy.draw()
    love.graphics.print("hello world", 500, 300)
end

