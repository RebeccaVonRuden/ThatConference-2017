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

function build_block_wall(number_of_blocks)
    for i = 1,number_of_blocks do
        place_block_down()
		turtle.forward()

    end
end

function build_story(wall_length)
    for i = 1, 4 do
        build_block_wall(wall_length)
        turtle.turnLeft()
    end
end

function build_stories(number_of_stories, wall_length)
    for i=1,number_of_stories do
		turtle.up()
        build_story(wall_length - 1)
    end
end

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