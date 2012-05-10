

-- Use this function to perform your initial setup
function setup()
    displayMode(FULLSCREEN)
    
    txt="Hello, This is a test of Terminal Text"
    txtColor = vec3(255,255,255)
    fnt="AmericanTypewriter-Bold"
    fntSize = 25
    delay = 3
    pos=vec2(WIDTH/2,HEIGHT/2)
    mode=CENTER
    align=LEFT
    
    termItem = TerminalText(txt,txtColor,fnt,fntSize,delay,pos,mode,align)
    
    txt="Fonts, Colors, Position, and delay can be changed."
    txtColor = vec3(0,0,255)
    fnt="AmericanTypewriter-Bold"
    fntSize = 20
    delay = 5
    pos=vec2(WIDTH/2,HEIGHT/2-30)
    mode=CENTER
    align=LEFT
    
    termItem2 = TerminalText(txt,txtColor,fnt,fntSize,delay,pos,mode,align)
    
    txt="Terminal Items can detect if other objects are completed!"
    txtColor = vec3(255,0,0)
    fnt="AmericanTypewriter-Bold"
    fntSize = 25
    delay = 3
    pos=vec2(WIDTH/2,HEIGHT/2-80)
    mode=CENTER
    align=LEFT
    
    termItem3 = TerminalText(txt,txtColor,fnt,fntSize,delay,pos,mode,align)
    
    txt="Codea - Terminal Text"
    txtColor = vec3(0,255,0)
    fnt="AmericanTypewriter-Bold"
    fntSize = 50
    delay = 5
    pos=vec2(WIDTH/2-275,HEIGHT/2+140)
    mode=CORNER
    align=LEFT
    
    termItem4 = TerminalText(txt,txtColor,fnt,fntSize,delay,pos,mode,align)

end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    
    background(0, 0, 0, 255)

    -- This sets the line thickness
    strokeWidth(5)

    -- Do your drawing here
    if termItem4.complete ~= true then
    termItem:draw()
    if termItem.complete == true then
        termItem2:draw()
        if termItem2.complete == true then
            termItem3:draw()
            if termItem3.complete == true then
                termItem4:draw()
                if termItem4.complete == true then
                    sleep(5)
                end
            end
        end
    end
    end
    
end

local clock = os.clock
function sleep(n)  -- seconds
  local t0 = clock()
  while clock() - t0 <= n do end
end
-- warning: clock can eventually wrap around for sufficiently large n
-- (whose value is platform dependent).  Even for n == 1, clock() - t0
-- might become negative on the second that clock wraps.
