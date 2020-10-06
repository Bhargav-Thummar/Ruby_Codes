#vatsal
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

        puts "Enter file number to perform operation.."
        yourChoice = gets.chomp.to_i
        
        puts "Choose the operation.."
        puts "1..> Read file"
        puts "2..> Append data in file"
        puts "3..> Overwrite file"
        yourOperation = gets.chomp.to_i

        case yourOperation.to_i
        when 1

            fp1 = File.new("#{@file1[yourChoice]}", "r")
            puts "----------------------------------------------"
            puts "  #{@file1[yourChoice]} (Read Mode Activated!)"
            puts "----------------------------------------------"
            puts fp1.readlines
            puts "----------------------------------------------"
            fp1.close

        when 2

            fp1 = File.new("#{@file1[yourChoice]}", "r+")
            puts "----------------------------------------------"
            puts "  #{@file1[yourChoice]} (Append Mode Activated!)"
            puts "----------------------------------------------"
            puts fp1.readlines
            puts "----------------------------------------------"
            puts "Enter data to append.."
            myData = gets.chomp
            fp1.syswrite("\n#{myData.to_s}")
            fp1.close

        when 3

            fp1 = File.new("#{@file1[yourChoice]}", "w")
            puts "----------------------------------------------"
            puts "  #{@file1[yourChoice]} (Overwrite Mode Activated!)"
            puts "----------------------------------------------"
            puts "Enter data to write.."
            myData = gets.chomp
            fp1.syswrite("\n#{myData.to_s}")
            fp1.close

        end  

    end
end

obj = MyClass.new
obj.showList