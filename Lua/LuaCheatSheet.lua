
-- Global and Local Variables. 
num = 42                -- A number.
s = 'A String'          -- A string.
b = true                -- boolean (true/false) value.
t = nil                 -- Un-defines a variable to be garbage collected.

local num = 42         -- A number.
local s = 'A String'   -- A string.
local b = true         -- boolean (true/false) value.

-- If conditions are used to ask if certain information is true and do something based on  that information. 
local block_name = "minecraft:planks"
local inventory_slot = turtle.getItemDetail(i)
if inventory_slot.name == block_name then
    return i
End
-- Other operators:  <  >  <=  >=  ==  
--        Special Note: ~= is Not Equal

--While a condition is true continue do something

while num < 50 do
   num = num + 1
end
print(num)

-- For LoopuUsed to repeat a section of code an exact number of times.

for i = 1, 4 do
       build_block_wall(wall_length)
       turtle.turnLeft()
end

-- Arrays, a data structure that contains a group of items. In lua all arrays starting index is the value 1 instead of a starting index of 0 like a lot of other programing languages.

a={} --new array
for i=1, 1000 do
   a[i] = 0 -- sets all values in the array to 0
end
print(a[1]) -- gets the array item’s value
 
     --   (Arrays also start with the value 1 instead of 0)

-- Functions are self contained lines of code that can be called many times.
function place_block_down(inventory_name)
   local inventory_slot = find_block_slot(inventory_name)
   turtle.select(inventory_slot)
   turtle.placeDown()
   return true
End

result = place_block_down("minecraft:planks")
place_block_down("minecraft:glass")  



-- Turtle.API Commands... More at http://computercraft.info/wiki/Turtle_(API)

turtle.forward() -- tells the turtle to move  forward.
turtle.up() -- tells the turtle to move up
turtle.down() -- tells the turtle to move down
turtle.turnLeft() -- tells the turtle to turn left
turtle.turnRight() -- tells the turtle to turn right

turtle.getItemDetail() -- gets an item's number detail
turtle.select() -- selects slot number 1 - 16
turtle.refuel() -- refuels the turtle (uses lava buckets and coal)

turtle.placeDown() -- places block below turtle
turtle.place() -- places block in front of turtle
turtle.dig() -- digs the block and puts it in the inventory

