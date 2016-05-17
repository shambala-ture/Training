
  class Dog
    def bark
      puts "woof"
    end
  end

  class Puppy < Dog
  end
  puts Puppy.new.bark