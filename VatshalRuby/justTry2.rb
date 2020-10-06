class Animal
  puts "animal loaded"
  @@animals = []
  puts @@animals
end
class Dog < Animal
  @@animals << self
  puts "#{@@animals} d"
end

class Cat < Animal
  puts "loaded"
  @@animals << self
  puts "#{@@animals} C"
  def a
    puts "gdfn "
  end
end



obj = Cat.new
