birthdays = {}
File.readlines('/Users/user/Desktop/birthdays.txt').each do |line|
	name, date, year = line.split(", ")
	birthdays[name] = date + ", " + year
end

puts "Whose birthday are you looking for?"
name = gets.chomp
bday = birthdays[name]

if bday == nil
  puts "That person is not recognised"
else
  puts "#{name}'s birthday is #{bday}"
end
