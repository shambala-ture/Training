
$hash = {}

def select_choice
  puts "1: Add Student"
  puts "2: Available list"
  puts "3: Sorted list"
  puts "4: Exit"
  choice=gets.chomp
  sort(choice)
  # hash_store(choice)
end

def sort(ch)
  case ch
    when '1'
      puts "Please enter datails"
      puts "Enter your Name :"
      name = gets.chomp
      puts "Enter your Grade :"
      grade = gets.chomp
      if $hash.keys.include?(grade)
        $hash[grade].push(name)
      else 
      $hash.merge!({grade => [name]})
      end
      select_choice

    when '2'
      puts "Available list is"
      puts $hash
    when '3'
      puts "Sorted list"
      $hash.name.sort
    else

      puts "Thank You"
  end
end

# def hash_store(defs)
#   defs.each do |name, grade|
#     @hash[name] = grade
#   end
# end

  select_choice
  # hash_store




  # print "Enter your choice(press 1 for add or 2 for Available list or 3 for exit): "
  # choice = gets.chomp
  # puts choice

  # $num = 3
  # while choice.to_i < $num
  #     puts "Enter your Name :"
  #     name = gets.chomp
  #     puts "Enter your Grade :"
  #     grade = gets.chomp    
  # end 

  # choice= 2
  # $num = 3
  # begin
  #     puts "Available list is"
  #     break
  # end while choice < $num

  # choice= 1
  # $num = 3
  # until choice > $num  do
  #   puts "Enter your Name :"
  #   name = gets.chomp
  #   puts "Enter your Grade :"
  #   Grade = gets.chomp
  # end



  # h = {"Grade2" => ["Ravindra", "Mahendra"]}
