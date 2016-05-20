lambda = lambda { |a, b| a + 5 }  
#puts lambda.call(2) (it gives error bcz you assign only one value)
puts lambda.call(2,3)