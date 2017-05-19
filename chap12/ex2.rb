puts "please enter the year you were born"
year = gets.chomp
puts "please enter the month you were born (as a number)"
month = gets.chomp
puts "please enter the day your were born"
day = gets.chomp
puts "now enter the time you were born"
time = gets.chomp

birthday = Time.local("#{year}", "#{month}", "#{day}", "#{time}", 00)
Time


num_beats = ((time = Time.new) - birthday) / 31536000

num_beats.to_i.times do puts "SPANK"
end
