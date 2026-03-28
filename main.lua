splashy = require 'libs/splashy'
screen = require "\libs\screen"
--settings = require 'menus/setting_menu'
--mainMenu = require 'menus/main_menu'
menus = require 'libs/menus'


-- lists
items = {
    bread = {},
    cheese = {},
    turkey = {},
    ham = {},
}

--what screen
menuSetting = "main"


-- screen settings varables
screenWidth = 0
screenHeight = 0



function love.load()
     --printing for debug mode
    print("debug mode is on") --comment this out on realse

    screen.screenSizeSet()
    screenSetting = screen.getScreenSize() -- can be set to Mini, Widescreen or HD
    
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
    
    -- import images
    --BoxScreen_HD = love.graphics.newImage("images/HD/Box-Screen.png")
    --BoxScreen_mini = love.graphics.newImage("images/Mini/Box-Screen.png")
    --BoxScreen_widescreen = love.graphics.newImage("images/widescreen/Box-Screen.png")








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

game = {}

function game.update(dt)
    func = function()
        if menuSetting == "main" then
            if screenSetting == "mini" then
                menus.mainMenu.print.mini()
        
            elseif screenSetting == "HD" then
                menus.mainMenu.print.HD()
        
            elseif screenSetting == "widescreen"then 
                menus.mainMenu.print.widescreen()
        
            end
        
        elseif menuSetting == "settings" then
        
            if screenSetting == "mini" then
                settingMenu.print.Mini()
        
            elseif screenSetting == "HD" then
                settingMenu.print.HD()
        
            elseif screenSetting == "widescreen"then 
                settingMenu.print.widescreen()
            end
        
        elseif menuSetting == "pause" then
            if screenSetting == "mini" then
                pauseMenu.print.mini()

            elseif screenSetting == "HD" then
                pauseMenu.print.HD()

            elseif screenSetting == "widescreen" then
                pauseMenu.print.widescreeen()
            end
        end
    end
end
        

