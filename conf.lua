-- this is the config file for the game

function love.conf(t)
    t.title     = "Griled Cheese game"
    t.author    = "Gamerpanda255"
    t.ur        = nil --put to the itch link later

    t.identity  = nil --set to the save diretory
    t.version   = "11.5" --version of love game was made in
    t.console   = true -- Set to false before export
    t.realse    = false --Enables realse mode

    t.window.width  = 1280
    t.window.height = 720
    t.window.fullscreen = false
end