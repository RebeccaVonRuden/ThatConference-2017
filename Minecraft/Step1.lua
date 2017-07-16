--[[
  Presentation: LEARNING TO PROGRAM USING MINECRAFT IN-GAME COMPUTERS AND TURTLES USING THE LUA PROGRAMMING LANGUAGE
  Author: Rebecca Von Ruden
  Link: https://www.thatconference.com/sessions/session/11175

  You will need: Mining Turtle, Lava Bucket, and Oak Wood Planks
  
  Requirements: 
    1. Place items in “Mining Turtle” with Lava Bucket in inventory slot 1.
    2. Refuel Turtle using inventory slot 1 and rest of the items anywhere.
    3. Function to Find Block’s Slot in the Turtle’s inventory.
    4. Function to Place Block Down.

  *****************************************
  ** STEP 1: Place One Block
  ** PasteBin: pastebin get vUw4CqrL step1
  *****************************************
--]]

-- Step 1: BEGIN
-- Description: Place One Block
-- PasteBin: vUw4CqrL

function find_block_slot(block_name)
  for i=1,16 do
    local inventory_slot = turtle.getItemDetail(i)
    if inventory_slot and inventory_slot.name == block_name then
		return i
    end
  end
  return nil
end

function place_block_down()
    local inventory_slot = find_block_slot("minecraft:planks")
    turtle.select(inventory_slot)
    turtle.placeDown()
    return true
end
-- Step 1: END

function main()
    turtle.select(1)
	  turtle.refuel()
    place_block_down()

end

main()