
function main(arr_size)
    print("Define empty array")
    local arr = {}
    for i = 1, arr_size do
        arr[i] = i
    end
    print("Print array info")
    for i = 1, arr_size do
        print(arr[i])
    end
end

main(25)