-- imports
local love = require 'love'
buttons = require 'elements/button'



-- Main Menu

local mainMenu = {}

-- Mini size window

function mainMenu.print.mini()
    love.graphics.setBackgroundColor(106, 230, 157, 1.0))
end

-- Widescreen Size window

function mainMenu.print.widescreen()
    love.graphics.setBackgroundColor(106, 230, 157, 1.0))
end

-- HD size Window

function mainMenu.print.HD()
    love.graphics.setBackgroundColor(106, 230, 157, 1.0))
end



-- Settings Menu

local settingsMenu = {}

function settingMenu.print.HD()
    love.graphics.setBackgroundColor(109, 176, 165, 1.0)
end

function settingMenu.print.mini()
    love.graphics.setBackgroundColor(109, 176, 165, 1.0)
    
end

function settingMenu.print.widescreen()
    love.graphics.setBackgroundColor(109, 176, 165, 1.0)
   
end


-- Pause Menu

local pauseMenu = {}

function pauseMenu.print.HD()
end