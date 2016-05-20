File.open("test2.txt", "w+") do |aFile|
aFile.syswrite("Hello EveryOne!\n")
aFile.syswrite("How are you all?")
aFile.close
end
