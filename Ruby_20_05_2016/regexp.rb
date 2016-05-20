line1 = "My name is Shambala"
line2 = "I love to play candy crush game"

if(line1 =~ /Shambala(.*)/)
 puts "Line1 contains Shambala"
end

if(line2 =~ /play(.*)/)
 puts "Line2 contains play"
end