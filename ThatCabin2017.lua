-- Uses 6 slots for 10 stories
function findBiuldingBlocks(itemName)
    for i=1, 16 do
        local item = turtle.getDetail(i)
        if item and item.name == itemName then
            print("Found the item in slot ", i)
            return i
        end
    end
end







function main()

end

main()