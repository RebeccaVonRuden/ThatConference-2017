function findBiuldingBlocks()
    for i=1, 16 do
        if turtle.getItemCount(i) > 0 then
            return i
            -- Uses 6 slots
        end
    end
end

function placeBlockNext()
    turtle.forward()
    turtle.select(findBiuldingBlocks())
    turtle.placeDown()
    return true
end

function biuldBlockWall(numOfBlock)
    for i=1, numOfBlock do
        placeBlockNext()
    end
end

function biuldLevel()
    for i=1, 4 do
        biuldBlockWall(9)
        turtle.turnLeft()
    end
end

function levelUp()
    turtle.up()
    turtle.select(findBiuldingBlocks())
    turtle.placeDown()
end

function newStories(numberStory)
    for i=1, numberStory do
        levelUp()
        biuldLevel()
    end
end

function roofingTime()
    turtle.turnLeft()
    turtle.forward()
    turtle.turnLeft()
    biuldBlockWall(8)
end

function main()
    newStories(10)
end
 
main()