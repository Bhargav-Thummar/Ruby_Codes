class Box
   # Initialize our class variables
   @@count = 0
   def initialize(w,h)
      # assign instance avriables
      @width, @height = w, h
       puts "Height is #@height and width is #@width"
      @@count += 1
   end

   def self.printCount(x)
      puts "Box count is : #@@count"
      puts "name is #{x}"
   end
end

# create two object
box1 = Box.new(10, 20)
box2 = Box.new(30, 100)

# call class method to print box count
Box.printCount("dfsfs")