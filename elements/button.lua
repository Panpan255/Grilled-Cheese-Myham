local love = require "love"

function Button(text, func, func_param, width, height)
    width = width or 100,
    height = height or 100,


    func = func or function()
        print("Warrning: This button does nothing please check code to fix")
    end,
    func_param = func_param,

    text = text or "Text Unset",

    button_x = 0,
    button_y = 0,
    text_x = 0,
    text_y = 0,
end

function quitButton(x, y)
    button_x = x
    button_y = y

    func = function()
        love.quit()
    end

end

function quitButton:draw(x, y)
    button_x = x
    button_y = y
    image = love.graphics.newImage("images/buttons/Quit.png")


    love.graphics.draw(image, x, y)
end