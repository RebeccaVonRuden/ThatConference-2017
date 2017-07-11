--[[
	Presentation: LEARNING TO PROGRAM USING MINECRAFT IN-GAME COMPUTERS AND TURTLES USING THE LUA PROGRAMMING LANGUAGE
	Author: Rebecca Von Ruden
	Link: https://www.thatconference.com/sessions/session/11175

  ***************************************
  ** PasteBin: w8t2MxeH
  **************************************

--]]


-- Description: Inspect Block In Front of Turtle
-- PasteBin: w8t2MxeH

function main()
        local success, block = turtle.inspect()        
        if success then
                print("Block name: ", block.name)
                print("Block metadata: ", block.metadata)
        end    
                       
end            
 
 
main()