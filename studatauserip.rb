$course="BBA"
$College_Name="VVP ENGG. COLLEGE"
   
class Report

   def print_details
       puts "Course is #$course"
       puts "Name of student #@name"
       puts "Age of #@age"
       puts "Maths = #@maths"
       puts "English = #@english"
       puts "Accout =  #@account"
       puts "Total Marks = #@total"
       puts "Percentage = #@percentage %"
       puts "College Name is #$College_Name"
   end

   def get_details
      puts "Enter your name"
      @name=gets
      @name=@name.chomp
      puts "Enter you age"
      @age=gets
      @age=@age.chomp.to_i
      puts "Enter marks of Maths - "
      @maths=gets
      @maths=@maths.chomp.to_i
      puts "Enter marks of english - "
      @english=gets
      @english=@english.chomp.to_i
      puts "Enter marks of account - "
      @account=gets
      @account=@account.chomp.to_i
   end  
   
   def count
       @total=@maths+@english+@account
       @percentage=((@total.to_i)/3)
   end
end
 
obj1=Report.new
obj1.get_details
obj1.count
obj1.print_details

puts "\n"

obj2=Report.new
obj2.get_details
obj2.count
obj2.print_details

