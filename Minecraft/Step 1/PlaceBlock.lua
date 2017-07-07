



function get_item_slot(item_name)
    for i=1, 16 do
        if turtle.getItemCount(i) > 0 then
            return i
            -- Uses 6 slots
        end
    end
end

function main()
    turtle.select(get_item_slot())
    turtle.placeDown()
    return true
end
 
main()