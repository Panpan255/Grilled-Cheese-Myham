local love = require 'love'
local main = require 'main'
local buttons = {}
--local main = require "main"


--function Button(text, func, func_param, width, height)
--    width = width or 100,
--    height = height or 100,
--
--
--    func = func or function()
--        print("Warrning: This button does nothing please check code to fix")
--    end,
--    func_param = func_param,
--
--    text = text or "Text Unset",
--
--    button_x = 0,
--    button_y = 0,
--    text_x = 0,
--    text_y = 0,
--end




function buttons.windowSize(x, y)
    button_x = x
    button_y = y

    func = function(windowSize)
        if windowSize == "HD" then
            love.window.setMode(1280, 720)
            resetGame()
        elseif windowSize == "widescreen" then
            love.window.setMode(800, 500)
            resetGame()
        elseif windowSize == "Mini" then
            love.window.setMode(1920, 1080)
            resetGame()
        end
    end
end



-- function quitButton:draw(x, y)
--     button_x = x
--     button_y = y
--     image = love.graphics.newImage("images/buttons/Quit.png")


--     love.graphics.draw(image, x, y)
-- end


function buttons.itemBox(x, y)
    self.x = x
    self.y = y

    local itemNumbers = {
    bread = {1,11, 21, 22},
    cheese = {2, 12},
    ham = {3, 13},
    turkey = {4, 14},
    letus = {5, 15},
    cucumber = {6, 16},
    Mestry = {7, 17}
    }

    func = function()
        local itemNumber = love.math.random(1, 22)

        if contains_value(itemNumbers.bread, itemNumber) then

        elseif contains_value(itemNumbers.cheese) then

        elseif contains_value(itemNumbers.ham) then

        elseif contains_value(itemNumbers.turkey) then

        elseif contains_value(itemNumbers.letus) then
        end

    end
    
end


--Menu/system buttons

function  buttons.quit(x, y)
    self.x = x
    self.y = y

    func = function()
        love.quit()
    end

end


function buttons.homeMenu(x,y)

    func = function()
    main.menuSetting = "main"
    main.game.update(dt)
    end

end

function buttons.settingsMenu(x, y)
    
    func = function()
    main.menuSetting = "settings"
    main.game.update(dt)
    end

end