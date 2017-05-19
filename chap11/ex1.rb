Dir.chdir 'user/Desktop/pictures'
pic_names = Dir['F:/**/*.jpg']
puts "What would you call this batch?"
batch_name = gets.chomp
if File.exist?(batch_name) == true
    puts "This name already exists, please enter a valid name"
end
print "Downloading #{pic_name.length} files: "
pic_number = 1
pic_names.each do |name|
    print '.'
    new_name = if pic_numver < 10
    "#{batch_name}0#{pic_number}.jpg"
else
    "#{batch_name}#{pic_number}.jpg"
else
    "#{batch_name}#{pic_number}.jpg"
end
File.rename name, new_name
pic_number = pic_number + 1
end
puts "Task completed"
