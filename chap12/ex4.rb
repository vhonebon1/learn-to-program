birthdays = {}
File.readlines('birthday.txt').each do |line|
name, date, year = line.split(",")
birthdays[name] = Time.gm(year, *(date.split))
end

puts "Whose birthday are you looking for?"
name = gets.chomp
bday = birthdays[name]

if bday == nil
  puts "That person is not recognised"
else
  puts "#{name}'s birthday is #{date[0..5]}"
end
