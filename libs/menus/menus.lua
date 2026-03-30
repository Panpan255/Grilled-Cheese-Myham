-- imports
local love = require 'love'
local buttons = require '/libs/button'



-- Main Menu

local mainMenu = {
    print = {}
}

-- Mini size window

function mainMenu.print.mini()
    love.graphics.setBackgroundColor(106, 230, 157, 1.0)
    love.graphics.draw(quitButton 100, 500)
    buttons.quit(100, 500)
end

-- Widescreen Size window

function mainMenu.print.widescreen()
    love.graphics.setBackgroundColor(106, 230, 157, 1.0)
    love.graphics.draw(quitButton 100, 500)
    buttons.quit(100, 500)
end

-- HD size Window

function mainMenu.print.HD()
    love.graphics.setBackgroundColor(106, 230, 157, 1.0)
    love.graphics.draw(quitButton 100, 500)
    buttons.quit(100, 500)
end



-- Settings Menu

local settingsMenu = {
    print = {}
}

function settingsMenu.print.HD()
    love.graphics.setBackgroundColor(109, 176, 165, 1.0)
    --love.graphics.draw(mainMenuButton 100, 700)
    buttons.homeMenu(100,700)
end

function settingsMenu.print.mini()
    love.graphics.setBackgroundColor(109, 176, 165, 1.0)
    --love.graphics.draw(mainMenuButton 100, 700)
    buttons.homeMenu(100, 700)
    
end

function settingsMenu.print.widescreen()
    love.graphics.setBackgroundColor(109, 176, 165, 1.0)
    --love.graphics.draw(mainMenuButton 100, 700)
    buttons.homeMenu(100, 700)
   
end


-- Pause Menu

local pauseMenu = {
    print = {}
}

function pauseMenu.print.HD()
end

function pauseMenu.print.mini()
end

function pauseMenu.print.widescren()
end


--- box screen

local boxScreen = {
    print = {}
}

function boxScreen.print.HD()
    --love.graphics.draw(BoxScreen_HD 0, 0)
end

function boxScreen.print.mini()
    --love.graphics.draw(BoxScreen_mini 0, 0)
end

function boxScreen.print.widescreen()
    --love.graphics.draw(BoxScreen_widescreen 0, 0)
end