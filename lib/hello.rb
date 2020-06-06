def hello_t(array) #defining our method to accept an argument
# code here 
    if block_given?
        i = 0 # counter variable 

        while i < array.length # while loop will execute the code in between the while and end keyword as long as i is < than the length of the array
            yield (array[i]) # will grab the value of each successive index element as we proceed through our while loop. ie. 0 < 3 ("Tim"), yield = Tim[0] time has an index of 0
            i = i + 1 # inside the loop we increment the value of i with +1
        end 
        array # return the original array
    else
        puts "Hey! No block was given!"   
    end
end

# call your method here!
# ["Tim", "Tom", "Jim"]
# # hello_t(["Tim", "Tom", "Jim"]) do |name|
# #     if name.start_with?("T")
# #       puts "Hi, #{name}"
# #     end
# #   end
