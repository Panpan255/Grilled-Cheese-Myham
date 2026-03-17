splashy = require 'libs/splashy'
--settings = require 'menus/setting_menu'

-- lists
items = {
    bread = {},
    cheese = {},
    turkey = {},
    ham = {},
}

-- screen settings varables
local screenWidth
local screenHeight
local screenSetting -- can be set to Mini, Widescreen or HD


function love.load()
     --printing for debug mode
    print("debug mode is on") --comment this out on realse

    
   
    
    -- print ("screen size", screenWidth, screenHeight) -- comment out this is debug
    
    --choicing splash screen based on screen size
    if screenSetting == "Widescreen" then
        splashy.addSplash(love.graphics.newImage("images/widescreen/Love-splash.png")) -- this loades splash screen for 720p(1280x720)
        splashy.addSplash(love.graphics.newImage("images/widescreen/game-jam-splash.png"))
        print("splash screen for Widescreen is setup") -- comment out later this is for debug
    elseif screenSetting == "Mini" then
        print("splash screen for Mini setup") -- comment out later this is for debug
        splashy.addSplash(love.graphics.newImage("images/Mini/love-splash.png")) -- this loades the splash for 800x500
        splashy.addSplash(love.graphics.newImage("images/Mini/game-jam-splash.png"))
    elseif screenSetting == "HD" then
        splashy.addSplash(love.graphics.newImage("images/HD/love-splash.png")) -- splash for 1920 by 1080
        splashy.addSplash(love.graphics.newImage("images/HD/game-jam-splash.png"))
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

