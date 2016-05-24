# puts "Enter your Name :"
# Name = gets
# puts "Enter your Grade :"
# Grade = gets
# puts Name,Grade
#  school = ("UserName: #{Name}, UserGrade : #{Grade}")
#  puts school
 
print "Enter your choice: "
choice = gets.chomp
puts choice
case choice
  when '1'
    puts "Please enter datails"
    puts "Enter your Name :"
    Name = gets
    puts "Enter your Grade :"
    Grade = gets
    puts Name,Grade
  when '2'
    puts "Available list is"
  else
    puts " Thank You"
end