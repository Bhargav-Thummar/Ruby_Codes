class MyClass
    def fileHandling
        puts "Choose the options.."
        puts "1.Show files"
        puts "2.Create New file"
        puts "3.Read File"
        puts "4.Write into File"
        puts ""
    end
    def showList
        @file1 = Dir.entries(".")
        @file1.sort!.each_with_index do|v, i|
            puts "(#{i}):: #{v}"
        end
        
        

    end
end

obj = MyClass.new
obj.showList