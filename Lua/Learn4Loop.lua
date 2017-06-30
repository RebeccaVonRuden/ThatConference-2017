-- Program that loops 100 times and prints out only even numbers. Must use main function.

function main() 
    print("Print out even numbers")
    for i = 1, 100 do
        if i % 2 == 0 then
            print(i)
        end
    end
    print("Print out odd numbers")
    for i = 1, 100 do
        if i % 2 == 1 then
            print(i)
        end
    end
end

main()