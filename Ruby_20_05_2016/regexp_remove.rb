phone = "98494-434-33 % This is sample test only"

phone = phone.sub!(/%.*$/, "")
 puts "Phone no is : #{phone}"
phone = phone.gsub!(/\D/, "")
 puts "Phone no is : #{phone}"