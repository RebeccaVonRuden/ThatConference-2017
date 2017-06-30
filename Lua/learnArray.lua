
function main()
    print("Define empty array")
    local arr = {}
    for i = 1, 25 do
        arr[i] = i
    end
    print("Print array info")
    for i = 1, 25 do
        print(arr[i])
    end
end

main()