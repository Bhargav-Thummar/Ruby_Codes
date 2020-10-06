#vatsal
class MyClass
    def myMethod
        puts "Choose Option: "    
        puts "1. Email Validation"
        puts "2. Phone number Validation"
        puts "3. Float number Validation"
        puts "4. IP Address Validation"
        puts "5. Digital Time Validation"
        puts "6. Special conditions Validation"
        puts "7. Website Name Validation"
        puts "8. String preceded by number Validation"
        op = gets.chomp.to_i
        case op
        when 1
            v = gets.chomp
            if(/[^0-9.]+[a-zA-z_]+@[a-zA-Z0-9]+\.[a-z]{2,3}/.match?(v))
                puts "--------------Match"
            else
                puts "Not Matched--------------"
            end

        when 2
            v = gets.chomp
            if(/[\+0-9]{1,4}\s*[0-9]{10}/.match?(v))    
                puts "--------------Match"
            else
                puts "Not Matched--------------"
            end

        when 3
            v = gets.chomp
            if(/[0-9]*\.[0-9]+/.match?(v))
                puts "--------------Match"
            else
                puts "Not Matched--------------"
            end

        when 4
            v = gets.chomp
            if(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/.match?(v))
                puts "--------------Match"
            else
                puts "Not Matched--------------"
            end

        when 5
            v = gets.chomp
            if(/[0-9]{2}:[0-9]{2}:[0-9]{2}\s(PM|AM|Pm|Am|am|pm)/.match?(v))
                puts "--------------Match"
            else
                puts "Not Matched--------------"
            end

        when 6
            v = gets.chomp
            if(/[a-zA-Z0-9]*\\*[a-zA-Z0-9]\.*[a-zA-Z0-9]\n*[a-zA-Z0-9]/.match?(v))
                puts "--------------Match"
            else
                puts "Not Matched--------------"
            end

        when 7
            v = gets.chomp
            if(/http(s*)\:\/\/www\.\w[a-zA-Z]+.\w[a-z]{2,3}/.match?(v))
                puts "--------------Match"
            else
                puts "Not Matched--------------"
            end

        when 8
            v = gets.chomp
            if(/[0-9]+[a-zA-Z]+/.match?(v))
                puts "--------------Match"
            else
                puts "Not Matched--------------"
            end

        end
    end
end

obj = MyClass.new
obj.myMethod