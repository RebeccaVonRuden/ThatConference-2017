
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
 
     --   (Arrays also start with the value 1 instead of 0)

-- Functions are self contained lines of code that can be called many times.
function place_block_down(inventory_name)
   local inventory_slot = find_block_slot(inventory_name)
   turtle.select(inventory_slot)
   turtle.placeDown()
   return true
End

place_block_down("minecraft:planks")     