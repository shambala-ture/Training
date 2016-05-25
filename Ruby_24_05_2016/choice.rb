case choice
  when '1'
    puts "Please enter datails"
    puts "Enter your Name :"
    name = gets.chomp
    puts "Enter your Grade :"
    Grade = gets.chomp
    print "Enter your choice for adding details(press 1 for add or 2 for Exit): "
    choice1 = gets.chomp
    puts choice1
    case choice1
      when '1'
        puts "Please enter datails for adding"
        puts "Enter your Name :"
        name = gets.chomp
        puts "Enter your Grade :"
        Grade = gets.chomp
      when '2'
        puts "Exit"
      else
        puts "Completed"
      end
  when '2'
    puts "Available list is"
  else
    puts "Thank You"
end