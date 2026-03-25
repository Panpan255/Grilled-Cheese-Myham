local screenSetting = "new"


function screenSizeSet()
    func = function()
    -- checking screen size 
        screenWidth, screenHeight = love.graphics.getDimensions()
    
    -- Changing screen size setting 
        if screenWidth == 800 and screenHeight == 500 then
            screenSetting = "Mini"
            print("screenSetting set to mini") --Debug comment out after
        elseif screenWidth == 1280 and screenHeight == 720 then
            screenSetting = "Widescreen"
            print("screenSetting set to Widescreen") --Debug comment out after
        elseif screenWidth == 1920 and screenHeight == 1080 then
            screenSetting = "HD"
            print("screenSetting set to HD") --Debug comment out after
        end
    end
end

function getScreenSize()
    local ScreenSize = {

    }

    func = function()
        table.insert(ScreenSize, screenSetting)
    end

    return ScreenSize

end