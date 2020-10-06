animals = ['bees','birds','bears']
puts animals
puts animals[1]
puts animals[10]
puts animals[-1]
puts animals[0..3]
(0..2).class

# More in array

val=0
# a[0]=2 this is invalid b'coz value can not directly assign to the array without declaretion.

x=[]
x[0]=1
puts x
x[10]=11
puts x

a=[]
a[0]='bees'
a[1]='honey'
a[2]=1000
a[3]=['workers','drone','queen']
puts a

b=[1,2,3,4,5]
puts b
b.push(6)
b.push(10)
puts b
puts b.pop
puts b

# hash
numbers = {1=>'One',2=>'two',3=>'three'}
puts numbers
puts numbers[1]
puts numbers[10]

food = {:chunky=>'bacon', :lumpy=>'oatmeal', :smooth=>'honey'}
puts food
puts food[:lumpy]
# here a symbol of : is for dereference

#for just knowledge
'string'.object_id
'string'.object_id
:string.object_id
:string.object_id

#Just for knowledge ex7.rb

=begin
then new topic CodeBlocks: it is a function without name and can be pass as a parameter to the methods
=end
5.times {puts 'bees buzz'} #here times is a method and inside of {} is know as code block or block

#same as above fro multiline block
5.times do
puts 'bhargav'
end

animals=['bees buzz','bears bite','birds tweet']
animals.each {|b| puts b} #here between || is parameter
# more on code block ex8.rb

arr=Array.new(10)
arr.size
arr.length
puts "#{arr}"
#or directly with string literal construction[]
arr=Array["sdfs",3,"dfs",'4',5]
puts "#{arr}"
puts "Size of array is : #{arr.size}"
puts"Length of array is : #{arr.length}"
#To retrieving multiple array element by index
print arr[1..4]

ahs=Array.new(4) {Hash.new} 
puts ahs

arr=Array.new(3) { Array.new(3) }
print arr

aar=Array({:a=>"sd",:b=>"ad"})
puts aar

class Person
 def intialize name
    @name=name
  end
  def get_name
  @name
  end
  end
p1=person.new "Jane"
p2=person.new "Bhargav"

puts p1.get_name
puts p2.get_name




