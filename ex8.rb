=begin
class Fixnum
  def my_times 
     i=self        # here work as a this pointer as in C++
       while i>0
          i=i-1
          yield
       end
   end
end

3.my_times {puts 'eat local honey'}

def my_fun_monkey(i)
   begin
     yield i
      i+=1
     end until i>10
end

my_fun_monkey(1) {|i| puts "Funny Monkey ##{i} gets chunky bacon"}

def actually_do_it(&block)
    block.call
end

def pass_it_along(&block)
    actually_do_it(&block)
end

pass_it_along {puts "I'm a block"}
actually_do_it {puts "Bhargav"}

class Example
 Var1=100
 Var2=200
def show
    puts "value of #{Var1}"
    puts "value of #{Var2}"
end 
end

object=Example.new()
object.show

puts 'escape using "\\\\"'
puts 'bhargav *'  
=begin
(1...10)===5.67 #returns true
1.eql?(1.0) #returns false


a=2
b=3
c=5
a,b=b,c
puts a,b
=end

h1=Hash.new
h1={1=>"A",2=>"B",3=>"C"}
h2.Hash.new
h2={1=>"D",2=>"B",3=>"c",4=>"G"}

h1==h2  #it returns false
h1[1] #returns A






