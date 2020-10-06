class Person
 def initialize(name)
    @name=name
 end

  def get_name
  @name
  end
end 

p1=Person.new ("Jane")
p2=Person.new ("Bhargav")
a=p1.get_name
b=p2.get_name

puts a
puts b
puts "################################################################"


class Person

    def initialize name
        @name = name
    end

    def get_name
        @name
    end

end

per = Person.new "Jane"

puts per.get_name
puts per.send :get_name
puts "##################################################################"
class Box
    BOX_COMPANY = "TATA Inc"
    BOXWEIGHT = 10
    # constructor method
    def initialize(w,h)
       @width, @height = w, h
    end
    # instance method
    def getArea
       @width * @height
    end
 end
 
 # create an object
 box = Box.new(10, 20)
 
 # call instance methods
 a = box.getArea()
 puts "Area of the box is : #{a}"
 puts Box::BOX_COMPANY
 puts "Box weight is: #{12*(Box::BOXWEIGHT)}"