
1. Basics of Ruby
 a. File Directory and other file format:
  i. Delete and truncate a file
 ii. Parsing CSV File
iii. Directory

 b. Thread and processes 

 hash =     (split /\:/,  (split /,/ doctor_map));
print Dumper \hash;

class Dictionary
  def initialize
    @hash = {}
  end

  def add(defs)
    defs.each do |Name, Grade|
      @hash[Name] = Grade
    end
  end
end

t=Time.new(2002, 10, 31, 9, 0, 0)
t3 = t + 30*60 # for minutes add
https://www.youtube.com/watch?v=VanzpEGtfrw

http://stackoverflow.com/questions/310634/what-is-the-right-way-to-iterate-through-an-array-in-ruby

 1. Grade School Assignment
 2. ConferenceTrackManagement.rb


 http://stackoverflow.com/questions/26249805/how-to-schedule-whenever-task-based-on-a-table-column


 require 'time' 

hour_step = (1.to_f/24)

date_time = DateTime.new(2016, 10, 31, 9, 0, 0)
date_time_limit = DateTime.new(2016, 10, 31, 12, 0, 0)

date_time.step(date_time_limit,hour_step).each{|e| puts e}


date_time.strftime("%I:%M %p").step(date_time_limit.strftime("%I:%M %p"),hour_step).each{|e| puts e}
date_time_limit.strftime("%I:%M %p")


Start_time.hour.each do|End_time|
  puts End_time



  task_time_list.each do |time|
  count += time
  if count == 180 && Lunch == false
    task_time_list.push(time_task)
    count = 0
    task_time_list.pop(time_task)
    Lunch = true
  end
end
&& Lunch == false
# start_time = Time.new(2016, 10, 31, 9, 0, 0)
# # puts "#{start_time.strftime("%I:%M %p")} "
# task_time_list.each_with_index {|val, index|
#   count += val
#   if count == 180
#     puts "#{start_time.strftime("%I:%M %p")}  #{task_list[index]}"
#   else
#     puts "#{start_time.strftime("%I:%M %p")}  #{task_list[index]}"
#     start_time= start_time + val.to_i * 60
#   end
# task_time_list.each_with_index do |time, i|
#   start_time= start_time + 60 * time
#   count += time
#   if count == 180
#     time_task.push("#{start_time}" + task_list[0])
#     count = 0
#     task_time_list.reverse!.pop(i+1)
#     # Lunch = true
#   end
# end



# puts task_time_list
 # puts task_list



# count = 0
# task_array =[]
# task_list = []
# task_time_list = []
# output_task = {'track-1' => {'morning_task' => [], 'evening_task' => []} }
# doc = track.split(/[\n]+/)
# doc.sort!{|a,b| b[/([0-9]*)([^ ]*)$/, 1].to_i <=> a[/([0-9]*)([^ ]*)$/, 1].to_i }
# puts doc
# doc.each do |task|
#   time = task[/([0-9]*)([^ ]*)$/, 1] == "" ? 5 : task[/([0-9]*)([^ ]*)$/, 1].to_i
#   count += time
#   if (count <= 180)
#     task_array << task
#     output_task['track-1'].each do |k,v| 
#       if (k == 'morning_task')
#         output_task['track-1'][k] = task_array
#       end
#     end
#   end
# end
# # puts task_array
# puts output_task

# doc.each do|i|

#   time = i[/([0-9]*)([^ ]*)$/, 1]

# end
 # puts task_time_list.inspect

 #puts task_list.inspect



# task_time_list.sort
# puts task_time_list
  # puts "#{val}  #{task_list[index]}"
  # puts "#{start_time.strftime("%I:%M %p")}  #{task_list[index]}"
  # start_time= start_time + val.to_i * 60




  # if (val == 12)
  #   task_list.push("Lunch 60min")
  #   elsif (val == 5)
  #   task_list.push("Networking Event")
  #   else
  #     puts ("End task for today")
  # end
# puts start_time
# puts task_list
# puts task_time_list