class Student
$course
@@results =0
CLGNAME = "VGEC"
puts CLGNAME
def initialize(name,age)
@name = name
@age = age
end



def add_mark()
puts "Enter marks 1"
@m1 = gets.chomp.to_i
puts "Enter marks 2"
@m2 = gets.chomp.to_i
puts "Enter marks 3"
@m3 = gets.chomp.to_i

end
    def count()
        @@results = @m1 + @m2 + @m3
        puts @@results
    end

    def details()
        puts "name = #{@name} ","age = #{@age}"
        
    end
end

ob = Student.new("vatsal",20)
ob.details()
ob.add_mark()
ob.count()