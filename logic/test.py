def sort_even_odd(arr):

    evens = [num for num in arr if num % 2 == 0]
    odds = [num for num in arr if num % 2 != 0]
    
    evens.sort(reverse=True)
    odds.sort(reverse=True)
    
    return evens + odds

input_array = [3,2,5,1,8,9,6]
sorted_array_desc = sort_even_odd(input_array) 
print(sorted_array_desc) 
