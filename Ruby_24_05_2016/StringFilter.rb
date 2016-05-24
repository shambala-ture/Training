doctor_map = "One: William Hartnell
Two:Patrick Troughton
Three:: Jon Pertwee
Four: Tom Baker (longest run)
5: Peter Davison
six: Colin Baker
Seven:   Sylvester McCoy
Eight: Paul McGann
Nine: Christopher Eccleston *series reboot*
Ten: David Tennant <- personal fav
Eleven: Matthew Robert Smith - the current doctor"
arr = []
doc = doctor_map.split(/[\n]+/)
puts doc
doc.each do|i|
  # puts i
  b=i.split(':')
  puts b
  arr.push(b)
end

# doctor=[doc[0].split(/:/),doc[1].split(/:/),doc[2].split(/:/),doc[3].split(/:/),doc[4].split(/:/),doc[5].split(/:/),doc[6].split(/:/),doc[7].split(/:/),doc[8].split(/:/),doc[9].split(/:/),doc[10].split(/:/)]
# puts doctor

# puts doctor[0][1]
# arr.push(doctor[0],doctor[1])
# arr.push(doctor[1],doctor[3])
# arr.push(doctor[0],doctor[3])
# arr.push(doctor[0],doctor[4])
# arr.push(doctor[0],doctor[5])
# arr.push(doctor[0],doctor[6])
# arr.push(doctor[0],doctor[7])
# arr.push(doctor[0],doctor[8])
# arr.push(doctor[0],doctor[9])
# arr.push(doctor[0],doctor[10])
puts arr[4][0]
