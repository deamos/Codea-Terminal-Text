

-- Use this function to perform your initial setup
function setup()
    displayMode(FULLSCREEN)
    
    txt="Hello, This is a test of Terminal Text"
    txtColor = vec4(255,255,255,0)
    fnt="AmericanTypewriter-Bold"
    fntSize = 25
    delay = 3
    pos=vec2(WIDTH/2,HEIGHT/2)
    mode=CENTER
    align=LEFT
    
    termItem = TerminalText(txt,txtColor,fnt,fntSize,delay,pos,mode,align)
    
    txt="Fonts, Colors, Position, and delay can be changed."
    txtColor = vec4(0,0,255,255)
    fnt="AmericanTypewriter-Bold"
    fntSize = 25
    delay = 5
    pos=vec2(WIDTH/2,HEIGHT/2-30)
    mode=CENTER
    align=LEFT
    
    termItem2 = TerminalText(txt,txtColor,fnt,fntSize,delay,pos,mode,align)
    
    txt="Terminal Items can detect if other objects are completed!"
    txtColor = vec4(255,0,0,255)
    fnt="AmericanTypewriter-Bold"
    fntSize = 25
    delay = 3
    pos=vec2(WIDTH/2,HEIGHT/2-80)
    mode=CENTER
    align=LEFT
    
    termItem3 = TerminalText(txt,txtColor,fnt,fntSize,delay,pos,mode,align)
    
    txt="Codea - Terminal Text"
    txtColor = vec4(0,255,0,255)
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
        if termItem.complete == false then
            termItem:fadeIn(1,255)
        end
        termItem:draw()
        if termItem.complete == true then
            termItem2:draw()
            termItem:fadeOut(1)
            if termItem2.complete == true then
                termItem3:draw()
                termItem2:fadeOut(1)
                if termItem3.complete == true then
                    termItem4:draw()
                    termItem3:fadeOut(2)
                    if termItem4.complete == true then
                        sleep(5)
                    end
                end
            end
        end
    end

end
