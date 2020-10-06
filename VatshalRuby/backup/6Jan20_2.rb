class MyClass
    def myMethod
        puts "Start Year: "
        startYear = gets.chomp
        puts "End Year: "
        endYear = gets.chomp
        puts "Enter Date to check: "
        myDate = gets.chomp
        m1 = myDate.split(",")
        dateCheck = myDate[-4]+myDate[-3]+myDate[-2]+myDate[-1]
        # puts dateCheck
        if((startYear.to_i..endYear.to_i)===dateCheck.to_i)
            puts "Yes #{m1[1]} is between 01-01-#{startYear} and 01-01-#{endYear}"
        else
            puts "------No--------"
        end


    end
end

obj1 = MyClass.new
obj1.myMethod