track = "Writing Fast Tests Against Enterprise Rails 60min
Overdoing it in Python 45min
Lua for the Masses 30min
Ruby Errors from Mismatched Gem Versions 45min
Common Ruby Errors 45min
Rails for Python Developers lightning
Communicating Over Distance 60min
Accounting-Driven Development 45min
Woah 30min
Sit Down and Write 30min
Pair Programming vs Noise 45min
Rails Magic 60min
Ruby on Rails: Why We Should Move On 60min
Clojure Ate Scala (on my project) 45min
Programming in the Boondocks of Seattle 30min
Ruby vs. Clojure for Back-End Development 30min
Ruby on Rails Legacy App Maintenance 60min
A World Without HackerNews 30min
User Interface CSS in Rails Apps 30min"

# Lunch = false
task_list = []
task_time_list = []
time_task = []
count = 0
doc = track.split(/[\n]+/)
doc.sort!{|a,b| b[/([0-9]*)([^ ]*)$/, 1].to_i <=> a[/([0-9]*)([^ ]*)$/, 1].to_i }
doc.each do|i|
  time = i[/([0-9]*)([^ ]*)$/, 1]
  task_list.push(i)
  if (time == "")
    task_time_list.push(5)
  else
   task_time_list.push(time.to_i)
  end
end
start_time = Time.new(2016, 10, 31, 9, 0, 0)
current_time = Time.new(2016, 10, 31, 9, 0, 0)
task_time_list.each_with_index {|val, index|

  if (start_time.strftime("%I:%M %p") == "12:00 PM")
    puts "#{start_time.strftime("%I:%M %p")}  Lunch"
    start_time= start_time + 60*60
    redo
  elsif (start_time.hour == 16)
    puts "#{start_time.strftime("%I:%M %p")}  Networking Event"
     start_time= start_time + 60*60 
     start_time = Time.new(2016, 10, 31, 9, 0, 0)
     puts "============End for day=========="
     puts "============Track 2=============="
     redo
  else
    puts "#{start_time.strftime("%I:%M %p")}  #{task_list[index]}"
    start_time= start_time + val.to_i * 60
  end
}
  puts "============End list============="
