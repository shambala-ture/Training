$hash = {}

def select_choice
  puts "=============Select your choice============="
  puts "1: Add Student"
  puts "2: Available list"
  puts "3: Sorted list"
  puts "4: Get Student of perticular grade"
  puts "5: Exit"
  puts "============================================"
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
      if $hash.has_key?(grade)
        $hash[grade].push(name)
      else 
      $hash.merge!({grade => [name]})
      end
      select_choice

    when '2'
      puts "===========Students list================="
      $hash.each do |k,v|
        puts "#{k} : #{v.join(', ')}"
      end
      select_choice
    when '3'
      puts "=============Sorted list=================="
      
      b=$hash.sort
      b.each do |k,v|
        v.sort!
      end
      puts b.to_h
      select_choice
    when '4'
      puts "Enter your grade"
      g=gets.chomp
      if $hash.has_key?(g)
        puts $hash[g]
      else
        puts "Grade is not Available in list"
      end
      select_choice
    else
      puts "Thank You"
  end
end
select_choice