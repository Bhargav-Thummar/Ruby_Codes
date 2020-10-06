class Clg
        $no      =   0 
        $cources =   "BE-IT"  
        $CLG     =   "Vishwakarma Government Engineering College" 
   
    def initialize(name,age)
        @name  = name
        @age   = age
        $no   += 1
    end

    def pri
        print "#{$cources} #{$CLG} #{@name} #{@age}"
      
    #   $out_file.syswrite("#{$cources} #{CLG} #{@name} #{@age}\n")
      
    end
   def marks(maths,science)
      ans   =   maths  +  science
      print " " , ans
      puts " "
   end
   END{
      puts  "Total Num Students is = #{$no}"
   }
end
    name    =   Array.new(3)
    cast    =   Array.new(3)
    m1      =   Array.new(3)
    m2      =   Array.new(3)
for i in 0..2 do
    print "Enter Name ,Surname ,m1 &m2 ::" 
    name[i]  =   gets.chomp
    cast[i]  =   gets.chomp
    m1[i]    =   gets.chomp
    m2[i]    =   gets.chomp
end


for i in 0..2 do
    s1   =   Clg.new(name[i],cast[i])
    s1.pri
    s1.marks((m1[i]).to_i,(m2[i]).to_i)
end
    aFile   =   File.new("input.txt", "w")
for i in 0..2 do
   
        if aFile
            aFile.syswrite("#{$cources} #{$CLG} #{name[i]} #{cast[i]} #{(m1[i]).to_i+(m2[i]).to_i}\n\n\n")
        else
            puts "Unable to open file!"
    end
end