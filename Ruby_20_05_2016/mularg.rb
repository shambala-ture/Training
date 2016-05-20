def mularg(*samp)
 puts "length of samp argument : #{samp.length}"
 for i in 0...samp.length
   puts "show argument that assign value :#{samp[i]}"
 end
end
mularg "zoya", 2, "pooja", "ayan"
mularg 11, 100, "rohan", "mamta", 222, 33