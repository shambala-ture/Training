$hash = {}
def select_choice
  puts "=============Select your choice============="
  choice=gets.chomp
  sort(choice)
end
def sort(ch)
  case ch
    when '1'
      puts "Please enter datails"
      puts "Enter your Number :"
      number = gets.chomp
      puts "Enter your String_no :"
      string_no = gets.chomp
      if $hash.has_key?(string_no)
        $hash[string_no].push(number)
      else 
      $hash.merge!({number=> [string_no]})
      end
      select_choice
    when '2'
      puts "===========Students list================="
      $hash.each do |k,v|
        puts "#{k} : #{v.join(', ')}"
      end
      select_choice
    when '3'
      puts "Enter your number"
      g=gets.chomp
      if $hash.has_key?(g)
        puts $hash[g]
      else
        puts "Number is not Available in list"
      end
      select_choice
      else
      puts "Thank You"
  end
end
select_choice