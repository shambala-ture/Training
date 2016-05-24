hash={}
print "Enter your Name: "
Name = gets
case Name
when String
  print('It is a string') 
else
  print('It is not a string') 
end
print "Enter your Garde: "
Grade = gets
case Grade = 2
when 0 .. 2
    puts "Insert"
else
    puts "Out"
end