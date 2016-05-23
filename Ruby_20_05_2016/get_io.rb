puts "Enter a value :"
val = gets
puts val
for i in (1..val.to_i).to_a.reverse
  for j in 1..i
   print i  
  end
   for k in 1..i
   print "*"
  end
puts ''
end