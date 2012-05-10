TerminalText = class()

function TerminalText:init(txt,txtColor,fnt,fntSize,delay,pos,mode,align)
    -- you can accept and set parameters here
    self.txt = txt
    self.txtColor = txtColor
    self.fnt = fnt
    self.fntSize = fntSize
    self.pos = pos
    self.delay = delay
    self.lastTime = 0
    self.lastChar = 0
    self.complete = false
    self.textMode = mode
    self.textAlign = align
end

function TerminalText:draw()
    -- Codea does not automatically call this method
    
    pushStyle()
    fill(self.txtColor.x,self.txtColor.y,self.txtColor.z)
    font(self.fnt)
    fontSize(self.fntSize)
    textMode(self.textMode)
    textAlign(self.textAlign)
    
    if self.lastTime > self.delay and self.lastChar < string.len(self.txt) then
        text(string.sub(self.txt,1,self.lastChar+1),self.pos.x,self.pos.y)
        self.lastTime = 0
        self.lastChar = self.lastChar + 1
    elseif self.lastChar == string.len(self.txt) then
        self.complete = true
        text(self.txt,self.pos.x,self.pos.y)
        
    else 
        text(string.sub(self.txt,1,self.lastChar+1),self.pos.x,self.pos.y)
        self.lastTime = self.lastTime + 1
    popStyle()
    end
end

function TerminalText:touched(touch)
    -- Codea does not automatically call this method
end
