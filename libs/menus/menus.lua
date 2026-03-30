-- imports
local love = require 'love'
local buttons = require '/libs/button'



-- Main Menu

local mainMenu = {
    print = {}
}

-- Mini size window

function mainMenu.print.mini()
    --background 

    love.graphics.setBackgroundColor(106, 230, 157, 1.0)

    --Quit button

    love.graphics.draw(quitButton 100, 500)
    buttons.quit(100, 500)
end

-- Widescreen Size window

function mainMenu.print.widescreen()
    --Background

    love.graphics.setBackgroundColor(106, 230, 157, 1.0)

    -- Quit button

    love.graphics.draw(quitButton 100, 500)
    buttons.quit(100, 500)
end

-- HD size Window

function mainMenu.print.HD()
    --Background

    love.graphics.setBackgroundColor(106, 230, 157, 1.0)

    --Quit button

    love.graphics.draw(quitButton 100, 500)
    buttons.quit(100, 500)
end



-- Settings Menu

local settingsMenu = {
    print = {}
}

function settingsMenu.print.HD()
    -- Background

    love.graphics.setBackgroundColor(109, 176, 165, 1.0)

    -- Home button

    --love.graphics.draw(mainMenuButton 100, 700)
    buttons.homeMenu(100,700)
end

function settingsMenu.print.mini()
    -- bacground

    love.graphics.setBackgroundColor(109, 176, 165, 1.0)

    --back button

    --love.graphics.draw(mainMenuButton 100, 700)
    buttons.homeMenu(100, 700)
    
end

function settingsMenu.print.widescreen()
    --background 
    love.graphics.setBackgroundColor(109, 176, 165, 1.0)

    -- back button

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

    -- The box
    
    --love.graphics.draw(BoxScreen_HD 0, 0)
end

function boxScreen.print.mini()

    --The box

    --love.graphics.draw(BoxScreen_mini 0, 0)
end

function boxScreen.print.widescreen()

    --The box

    --love.graphics.draw(BoxScreen_widescreen 0, 0)
end