--[[
  Presentation: LEARNING TO PROGRAM USING MINECRAFT IN-GAME COMPUTERS AND TURTLES USING THE LUA PROGRAMMING LANGUAGE
  Author: Rebecca Von Ruden
  Link: https://www.thatconference.com/sessions/session/11175

  You will need: Mining Turtle, Lava Bucket, and Oak Wood Planks
  
  *****************************************
  ** STEP 1: Place One Block
  ** PasteBin: pastebin get vUw4CqrL step1
  *****************************************

  Requirements: 
    1. Place items in “Mining Turtle” with Lava Bucket in inventory slot 1.
    2. Refuel Turtle using inventory slot 1 and rest of the items anywhere.
    3. Function to Find Block’s Slot in the Turtle’s inventory.
    4. Function to Place Block Down.

  ******************************************
  ** STEP 2: Build a Block Wall
  ** PasteBin: pastebin get ZryCakMb step2
  ******************************************
  You will need: Mining Turtle, Lava Bucket, and Oak Wood Planks

  Requirements:
    1. Complete the the requirements for Step 1.
    2. Create function build_block_wall(number_of_blocks).
    3. Using a for loop to place down 4 blocks down in a row using function in step 1.

  ******************************************
  ** STEP 3 Build One Story 
  ** PasteBin: pastebin get 0z5Rgvuh step3
  ******************************************

  You will need: Mining Turtle, Lava Bucket, and Oak Wood Planks

  Requirements:
    1. Complete the the requirements for step 1 and 2.
    2. Create function build_story(wall_length).
    3. Using a for loop to build 4 block_walls using left turns using function in step 2. 

  ******************************************
  ** STEP 4 Build Multiple Stories
  ** PasteBin: pastebin get JD7S4JMR step4
  ******************************************

  You will need: Mining Turtle, Lava Bucket, and Oak Wood Planks.

  Requirements:
    1. Complete the requirements for Step 1, 2, and 3.
    2. Create function build_stories(number_of_stories, wall_length).
    3. Using a for loop to build 3 stories with a wall length of 5.
    4. Using the function created in step 3.

  *****************************************
  ** STEP 5 Build Roof
  ** PasteBin:pastebin get fv432ghS step5
  *****************************************

  You will need: Mining Turtle, Lava Bucket, Oak Wood Planks, and Stone Slabs.

  Requirements:
    1. Complete the requirements for Steps 1, 2, 3, and 4.
    2. Create a function to Place Roof Down using stone slabs.
    3. Create a for loop and if i % 2 == 0 then to know when to turn left or right when placing the roof block down in a function.

  ******************************************
  ** STEP 6 Door and Window
  ** PasteBin: pastebin get f9WLq2w7 step6
  ******************************************

  You will need: Mining Turtle, Lava Bucket, Oak Wood Planks, Stone Slabs, Glass Blocks, and Oak Wood Door

  Requirements:
	1. Complete Requirements for Steps 1, 2, 3, 4, and 5.  Place new blocks in inventory.
	2. Create a function to position turtle and Dig out wall blocks and Place the door.
	3. Create a function to position turtle and dig out wall blocks and Place the window.

  ******************************************
  ** STEP 7 Passing Arguments In
  ** PasteBin: pastebin get ceFGB85S step7
  ******************************************

  You will need: Mining Turtle, Lava Bucket, Oak Wood Planks, Stone Slabs, Glass Blocks, and Oak Wood Door
 	
  Requirements:
	1. Complete requirements for Steps 1, 2, 3, 4, 5, and 6. Place new blocks in inventory.
	2. Update the main(number_of_stories,wall_length) function to accept 2 arguments.
	3. Pass the arguments to the new main(args[1],args[2]) function.
--]]

