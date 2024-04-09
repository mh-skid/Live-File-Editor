
function love.load()
    love.window.setMode(300, 800, {resizable=false, vsync=1, minwidth=400, minheight=300})
    _G.Loaded=true;

end

do
    _G.deltaTime = 0
    _G.width,_G.height = 0
    _G.INP_data = {}
    local localINP = _G.INP_data
    localINP.__Index = localINP

    _G.EXPLORER = {} --//MAIN TABLE!!! DONT FUCK WITH IT!!!!
end

table.insert(_G.EXPLORER,{
    ["Name"] = "penis file";
    ["Modified"] = os.time();
    ["Color"] = {1,.25,.25};
    ["Parent"] = _G.EXPLORER;
    ["Width"] = 0;
    
    ["File Data"] = "lalalaaa"
})

table.insert(_G.EXPLORER,{
    ["Name"] = "penis file 2";
    ["Modified"] = os.time();
    ["Color"] = {1,.4,.4};
    ["Parent"] = _G.EXPLORER;
    ["Width"] = 0;
    
    ["File Data"] = "lalalaaa"
})


local const1 = require("EXPLORER/module1")
require("INPUTS")

local yOffset = 0
function lerp(a,b,x)
    return a+(b-a)*x
end


function love.update(dt)
    _G.deltaTime=dt
    yOffset = lerp(yOffset,(_G.INP_data["Wheel"] or 0)*25,.15 * (_G.deltaTime*60))
end



function love.draw()
    _G.width = love.graphics.getWidth()
    _G.height = love.graphics.getHeight()

    coroutine.wrap(function() --//Main BG and whatnot
        love.graphics.setColor(.125,.125,.13,1)
        love.graphics.rectangle("fill",0,0,900,800)

        love.graphics.setColor(.35,.35,.35,1)
        love.graphics.rectangle("fill",15,35 + yOffset,375,5)
    end)()


    for i,v in pairs(_G.EXPLORER) do
        love.graphics.setColor(v.Color[1],v.Color[2],v.Color[3],1)
        love.graphics.printf(v.Name, 200, 100 + yOffset + (i*35),200,"right")

        love.graphics.setColor(.2,.2,.2,1)
        love.graphics.rectangle("fill",350,120 + yOffset + (i*35),100,3)
    end
    
end
 
 

