numbers = {"1" => "One",
  "2" => "Two",
  "3" => "Three",
  "4" => "Four",
  "5" => "Five",
  "6" => "Six",
  "7" => "Seven",
  "8" => "Eight",
  "9" => "Nine",
  "10"=> "Ten"}
puts numbers
puts "Enter your number upto 1 to 10"
g = gets.chomp
if numbers.has_key?(g)
  puts numbers[g]
else
  puts "Number is not Available in list"
end