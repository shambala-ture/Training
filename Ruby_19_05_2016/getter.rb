class Box
  def initialize(a,b)
     @width, @height = a,b
  end
  def printwidth
    @width
  end
  def printheight
    @height
  end
end

box=Box.new(10,20)
x=box.printwidth()
y=box.printheight()

puts "width of box #{x}"
puts "height of box #{y}"
