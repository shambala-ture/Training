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

task_list = []
task_time_list = []
output_task = []
doc = track.split(/[\n]+/)
doc.each do|i|
  time = i[/([0-9]*)([^ ]*)$/, 1]
  task_list.push(i)
  if (time == "")
    task_time_list.push("5")
  else
   task_time_list.push(time)
  end
end
start_time = Time.new(2016, 10, 31, 9, 0, 0)

task_time_list.each_with_index {|val, index|
  # puts "#{val}  #{task_list[index]}"
  puts "#{start_time.strftime("%H:%M %p")}  #{task_list[index]}"
  start_time= start_time + val.to_i * 60
}






# puts start_time
# puts task_list
# puts task_time_list