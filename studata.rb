$course="BBA"
$College_Name="VVP ENGG. COLLEGE"

class Report
   def initialize(name,age,maths,english,account)
       @name=name
       @age=age
       @maths=maths
       @english=english
       @account=account
   end
   
   def print_details
       puts "Course is #$course"
       puts "Name of #@name"
       puts "Age of #@age"
       puts "Maths = #@maths"
       puts "English = #@english"
       puts "Accout =  #@account"
       puts "Total Marks = #@total"
       puts "Percentage = #@percentage %"
       puts "College Name is #$College_Name"
   end
   
   def count
       @percentage
       @total=@maths+@english+@account
       @percentage=(@total/3)
   end
end
 
obj1=Report.new("Prachi",21,23,54,95)
obj1.count
obj1.print_details

puts "\n"

obj2=Report.new("Bhargav",22,97,64,80)
obj2.count
obj2.print_details
