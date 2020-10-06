#vatsal
module Temp
    def Temp.t1
        obj  = GetDetails.new
        obj.callGetMarks
    end
end

class StudentPersonal
    $StudInfo = {}
    def initialize
        # obj = GetDetails.new
    end
    def getDetails
        puts "Enter Name: "
        $StudInfo.merge!("name"=>gets.chomp)
        puts "Semester: "
        $StudInfo.merge!("sem"=>gets.chomp)
        Temp.t1
        # obj.getMarks
    end
end

module PrintResult
    private
    def result
        @percentage = (@total.to_i * 100)/(@no.to_i * 100)
        # puts "Percentage: #{@percentage}"
        if((80..100)===@percentage)
            # puts "A grade" 
            @grade = "A"   
        elsif((60..79)===@percentage)
            # puts "B grade"
            @grade = "B"
        elsif((40..59)===@percentage)
            # puts "C grade"
            @grade = "C"
        else
            # puts "D grade"
            @grade = "D"
            
        end
        saveresult()
    end

    def saveresult
        fp1 = File.new("result.txt", "w")
        fp1.syswrite("---Result---\n Name: #{$StudInfo["name"]}\n Semester: #{$StudInfo["sem"]}\n Percentage: #{@percentage}\n Grade: #{@grade}")
        fp1.close
        retriveResult
    end

    def retriveResult
        if(File.file?("result.txt"))
        fp1 = File.new("result.txt", "r")
        puts fp1.readlines
        fp1.close
        else
            puts "File doesn't exist!!"
        end
    end
    
end

class GetDetails < StudentPersonal
    include PrintResult
    public 
    def callGetMarks
        getMarks()
    end
    private
    def getMarks
        puts "Enter number of subjects: "
        @no = gets.chomp.to_i
        @marks =  []
        @total = 0
        for i in (0..@no-1) do
            puts "Enter marks of subject_#{i+1}: "
            @marks << gets.chomp.to_i
            @total= @total.to_i + @marks[i]
        end
        result
    end
end

obj = GetDetails.new
obj.getDetails