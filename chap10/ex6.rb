def english_number (number)
return_string = ''

ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    tens = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

thousands = (number/1000).to_i
return_string << ones[thousands -1] + ' thousand '
left = number - thousands*1000

hundreds = (left/100).to_i
if hundreds != 0
return_string << ones[hundreds-1] + ' hundred' + " and "
left = number - thousands*1000 - hundreds*100
end

tens_group = (left/10).to_i
if tens_group != 0
return_string << tens[tens_group-1] + ' '
left = number - thousands*1000 - hundreds*100 - tens_group*10
end

final = (left/1).to_i
if final != 0
return_string << ones[final-1]
end
return_string
end


puts "What number should we start at?"
start_num = gets.chomp
current_num = start_num
while current_num > 2
puts english_number(current_num).capitalize + " bottles of beer on the wall, " + english_number(current_num) + " bottles of beer!"
current_num = current_num - 1
puts "You take one down and pass it round, " + english_number(current_num) + " bottles of beer on the wall"
end
