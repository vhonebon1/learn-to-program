def shuffle(array)
new_array = []
until array.length == 0
element = array[rand(0..array.length-1)]
new_array << element
array.delete(element)
end
new_array
end
