puts "%05d" % 123                             
puts "%-5s: %08x" % [ "ID", self.object_id ]   
puts "foo = %{foo}" % { :foo => 'bar' } 
puts "Ho! " * 3 
puts "Ho! " * 0
puts "Hello from " + self.to_s
a = "hello "
puts a << "world"
puts a.concat(33)