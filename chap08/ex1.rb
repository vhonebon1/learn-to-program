array = []
puts 'String to be added'
input = gets.chomp

while input != ""
  array.push input
  puts 'String to be added'
  input = gets.chomp
end

puts array.sort
