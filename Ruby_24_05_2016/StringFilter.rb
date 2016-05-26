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
  b=i.split(':')
  puts b
  arr.push(b)
end
puts arr[4][0]