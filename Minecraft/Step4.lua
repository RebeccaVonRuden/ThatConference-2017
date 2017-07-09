--[[
	Presentation: LEARNING TO PROGRAM USING MINECRAFT IN-GAME COMPUTERS AND TURTLES USING THE LUA PROGRAMMING LANGUAGE
	Author: Rebecca Von Ruden
	Link: https://www.thatconference.com/sessions/session/11175

  ***************************************
  ** STEP 4 Build Multiple Stories
  ** PasteBin: JD7S4JMR
  **************************************
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

-- Step 2: BEGIN
-- Description: Build Block Wall
-- PasteBin: ZryCakMb

function build_block_wall(number_of_blocks)
    for i = 1,number_of_blocks do
        place_block_down()
		turtle.forward()

    end
end

-- Step 2: END

-- Step 3: BEGIN
-- Description: Build One Story 
-- PasteBin: 0z5Rgvuh

function build_story(wall_length)
    for i = 1, 4 do
        build_block_wall(wall_length)
        turtle.turnLeft()
    end
end

-- Step 3: END

-- Step 4: BEGIN
-- Desription: Build Multiple Stories
-- PasteBin: JD7S4JMR

function build_stories(number_of_stories, wall_length)
    for i=1,number_of_stories do
		turtle.up()
        build_story(wall_length - 1)
    end
end

-- Step 4: END


function main()
    turtle.select(1)
	turtle.refuel()
    build_stories(3, 5)

end

main()