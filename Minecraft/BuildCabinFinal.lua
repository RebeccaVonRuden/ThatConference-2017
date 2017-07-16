--[[
  Presentation: LEARNING TO PROGRAM USING MINECRAFT IN-GAME COMPUTERS AND TURTLES USING THE LUA PROGRAMMING LANGUAGE
  Author: Rebecca Von Ruden
  Link: https://www.thatconference.com/sessions/session/11175

  You will need: Mining Turtle, Lava Bucket, Oak Wood Planks, Stone Slabs, Glass Blocks, and Oak Wood Door

  Requirements:
     1. Place items in “Mining Turtle” with Lava Bucket in inventory slot 1.
     2. Refuel Turtle using inventory slot 1 and rest of the items anywhere.
     3. Function to Find Block’s Slot in the Turtle’s inventory.
     4. Function to Place Block Down.
	 5. Create function build_block_wall(number_of_blocks).
     6. Using a for loop to place down 4 blocks down in a row using Place Block Down function.
     7. Create function build_story(wall_length).
     8. Using a for loop to build 4 block_walls using left turns using build_block_wall function.
     9. Create function build_stories(number_of_stories, wall_length).
    10. Using a for loop to build 3 stories with a wall length of 5.
    11. Using the build_story function.
    12. Create a function to Place Roof Down using stone slabs.
    13. Create a for loop and if i % 2 == 0 then to know when to turn left or right when placing the roof block down in a function.
    14. Create a function to position turtle and Dig out wall blocks and Place the door.
    15. Create a function to position turtle and dig out wall blocks and Place the window.
    16. Update the main(number_of_stories,wall_length) function to accept 2 arguments.
    17. Pass the arguments to the new main(args[1],args[2]) function.

  ***********************************************
  ** PasteBin: pastebin get dzwc8Vu0 buildCabin
  ***********************************************

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

-- Step 5: BEGIN
-- Description: Build Roof
-- PasteBin: fv432ghS

function place_roof_down()
    local inventory_slot = find_block_slot("minecraft:stone_slab")
    turtle.select(inventory_slot)
    turtle.placeDown()
    return true
end

function build_roof_row(roof_length)
    for i = 1,roof_length do
		turtle.forward()
        place_roof_down()
    end
end

function build_roof(wall_length)
	turtle.up()
	for i=1, wall_length do
		place_roof_down()
		build_roof_row(wall_length - 1)
		if i % 2 == 0 then
			turtle.turnRight()
			turtle.forward()
			turtle.turnRight()
		else
			
			turtle.turnLeft()
			turtle.forward()
			turtle.turnLeft()
		end
	end
end

-- Step 5: END

-- Step 6: BEGIN
-- Description: Door and Window
-- PasteBin: f9WLq2w7

function install_door(number_of_stories)

	for i=1,number_of_stories do
		turtle.down()
	end
	turtle.down()
	turtle.forward()
	turtle.turnLeft()
	turtle.dig()
	turtle.up()
	turtle.dig()
	turtle.down()
    local inventory_slot = find_block_slot("minecraft:wooden_door")
    turtle.select(inventory_slot)
    turtle.place()
end

function install_window()
	turtle.up()
	turtle.turnRight()
	turtle.forward()
	turtle.forward()
	turtle.turnLeft()
	turtle.dig()
    local inventory_slot = find_block_slot("minecraft:glass")
    turtle.select(inventory_slot)
    turtle.place()
end

-- Step 6: END

-- Step 7: BEGIN 
-- Description: Passing Arguments In
-- PasteBin: ceFGB85S

function validate_arguments(number_of_stories,wall_length)
	if number_of_stories == nil then
		print("Argument 1 is Required: number_of_stories")
		 error() 
	end
	if wall_length == nil then
		print("Argument 2 is Required: wall_length")
		 error() 
	end
end

function main(number_of_stories,wall_length)
    turtle.select(1)
	turtle.refuel()
	validate_arguments(number_of_stories,wall_length)
	build_stories(number_of_stories, wall_length)
	build_roof(wall_length)
    install_door(number_of_stories)
	install_window()
end

local args = { ... }
main(args[1],args[2])

-- Step 7: END