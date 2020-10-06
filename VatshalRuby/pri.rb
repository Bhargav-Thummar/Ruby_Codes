class Ecommerce
    @@electronic= {"led" => 25000, "ac" => 40000}
     @@clothing = {"shirts" => 500, "jeans" => 1000}
     @@footwear = {"shoes" => 800, "slipper" => 400}
     @@toys = {"soft_toy" => 600,"teddy" => 900}
    
   def initializee
    $x = 0
    @@cata = []
    @@name = []
    @@value = []
    @@quat = []
    @@tprice = []

    @@myChoice = 0
    
    @@selected ={}
    
  end
    
def mymethod
    
    puts "Enter User Name:"
    @@user_nm = gets.chomp
    
    puts "Username is #{@@user_nm}"
    begin
    puts "  Select product category:"
    puts "1)Electronics \n 2)Clothing \n 3)Footwear \n 4)Toys"
    prod_no = 0
    prod_no = gets.chomp.to_i
    case prod_no.to_i
      when 1 
        @@categ = "Electronics"
        puts "Electronics items are :"
        @@electronic.each { |key, value| print "#{key}:#{value}\n"} 
        elec_item = 0
        elec_item = gets
        case elec_item.to_i
        when 1 
          puts "select quantity:"
          qua = 0
          qua = gets
          qua.to_i
          @@price = @@electronic["led"]
          @@price = @@price.to_i*qua.to_i
          @@selected = @@electronic.clone
          puts @price
        
      when 2 
        
        puts "select quantity:"
        qua = 0
        qua = gets
        qua.to_i
        @@price = @@electronic["ac"]
        @@price = @@price.to_i*qua.to_i
        @@selected = @@electronic.clone
      end
      
      when 2
        @@categ = "Clothing"
        puts "Clothing items are :"
        @@clothing.each { |key, value| print "#{key}:#{value}\n"} 
        elec_item = 0
        elec_item = gets
        case elec_item.to_i
        when 1 
          puts "select quantity:"
          qua = 0
          qua = gets
          qua.to_i
          @@price = @@clothing["shirts"]
          @@price = @@price.to_i*qua.to_i
          @@selected = @@clothing.clone
        
        when 2 
        puts "select quantity:"
        qua = 0
        qua = gets
        qua.to_i
        @@price = @@clothing["jeans"]
        @@price = @@price.to_i*qua.to_i
        @@selected = @@clothing.clone
        end
  
      when 3
        @@categ = "Footwear"
        puts "Footwear items are :"
        @@footwear.each { |key, value| print "#{key}:#{value}\n"} 
        elec_item = 0
        elec_item = gets
        case elec_item.to_i
        when 1 
          puts "select quantity:"
          qua = 0
          qua = gets
          qua.to_i
          @@price = @@footwear["shoes"]
          @@price = @@price.to_i*qua.to_i
          @@selected = @@footwear.clone
        when 2
          puts "select quantity:"
          qua = 0
          qua = gets
          qua.to_i
        @@price = @@footwear["slipper"]
          @@price = @@price.to_i*qua.to_i
          @@selected = @@footwear.clone
        end
      when 4
        @@categ = "Toys"
        puts "Toys are :"
        @@toys.each { |key, value| print "#{key}:#{value}\n"} 
        elec_item = 0
        elec_item = gets
        case elec_item.to_i
        when 1 
          puts "select quantity:"
          qua = 0
          qua = gets
          qua.to_i
          @@price = @@toys["soft_toy"]
          @@price = @@price.to_i*qua.to_i
          @@selected = @@toys.clone
          @@myChoice = 0;
        when 2 
          puts "select quantity:"
          qua = 0
          qua = gets
          qua.to_i
          @@price = @@toys["teddy"]
          @@price = @@price.to_i*qua.to_i
          @@selected = @@toys.clone
          @@myChoice = 1;
        end  
      else
        puts "Invalid input"
      
    end
    @@cata.append(@@categ) 
    @@name.append(@@selected.keys[@@myChoice.to_i])
    puts "Want to buy new product then press 1:"
    new = gets.to_i
    $x+=1
  end while new == 1
end
   
  
    def bill
      puts "Name:#{@@user_nm}"  
      for y in 0..$x      
        print "catergory : ", @@cata[y],"\n"
        puts "Item name :#{@@name[y]}"
        puts "Value : #{@@value[y]}"
        puts "Quantity:#{@@quat[y]}"
        puts "Price: #{@@tprice[y]}"
      
        puts "Total amount:#{}"
        end 
    end
  
  
  end
  inv = Ecommerce.new()
  inv.initializee
  inv.mymethod

   inv.bill()
  
  
  