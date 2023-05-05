def bubble_sort(array)

    #base case if array is empty or contains a single element
    if array.size <= 1

        return array
    end

    count = 0

    while array.length - 1 > count

        #after each iteration through the array we know that the right most element is in its correct spot therefore we do not need to account for the right most element after each iterations
        for i in (0...array.length-count) 
            #puts "position in array : #{i}" 

            #since we are comparing each current index with the following in order to avoid comparing our last index with a nil value we must make sure that i+1 is less than the length of the array
            if i+1 < array.length && array[i] > array[i+1]

                bubbling_element = array[i]
                #puts "bubbling element #{bubbling_element}"
                array[i] = array[i+1]
                array[i+1] = bubbling_element

                #puts "first: #{array[i]}"
                #puts "second: #{array[i+1]}"

            end
        end

        count+=1
    end

    puts array

end
bubble_sort([4,3,78,2,0,2])
bubble_sort([3,5,663,26,7,27,0,4,-1])