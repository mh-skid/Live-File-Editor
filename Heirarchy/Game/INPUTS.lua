function love.keypressed( key, scancode, isrepeat )
    if _G.INP_data[string.upper(scancode)]==nil then
        table.insert(_G.INP_data,string.upper(scancode))
    end
    _G.INP_data[string.upper(scancode)] = true
end

function love.keyreleased( key, scancode, isrepeat )
    _G.INP_data[string.upper(scancode)] = false
end

function love.wheelmoved(x, y)
    if not _G.INP_data["Wheel"] then
        _G.INP_data["Wheel"] = y
    else
        _G.INP_data["Wheel"] = _G.INP_data["Wheel"] + y
    end
end