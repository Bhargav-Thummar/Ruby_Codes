require 'csv'
$myItems = []
CSV.open("cart.csv", "w",:write_headers=> true,
    :headers => ["item","qty"]) do |csv|
    csv << ["Italian Pizza", 5]
    csv << ["burger", 5]

    csv << ["Mexican cuisine", 5]
    csv << ["Mexican Pizza", 5]

    csv << ["Chinese manchurian", 5]
    csv << ["Italian Pizza", 5]

    csv << ["Idli", 5]
    csv << ["Dosa", 5]

    csv << ["Paneer Tikka", 5]
    csv << ["Chapati", 5]

    csv << ["Greek Salad", 5]
    csv << ["Noodle", 5]

    csv << ["Italian Pizza non", 5]
    csv << ["burger non", 5]

    csv << ["Mexican cuisine non", 5]
    csv << ["Mexican Pizza non", 5]

    csv << ["Chinese manchurian non", 5]
    csv << ["Italian Pizza non", 5]

    csv << ["Idli non", 5]
    csv << ["Dosa non", 5]

    csv << ["Paneer Tikka non", 5]
    csv << ["Chapati non", 5]

    csv << ["Greek Salad non", 5]
    csv << ["Noodle non", 5]
end



csvObj = CSV.read("cart.csv")
$oo = csvObj.to_h
puts $oo

def updateCSV

end

module Info
    def Info::getInfo()
        puts "Enter name.."
        $name = gets.chomp
        until(/[a-zA-Z]/.match?($name))
            puts "**********Please re-enter your name..**********"
            $name = gets.chomp
        end
        puts "Enter Phone number.."
        $phoneNo = gets.chomp
        until(/^([0-9]{10})$/.match?($phoneNo))
            puts "**********Please re-enter your number..**********"
            $phoneNo = gets.chomp
        end
    end
end

class Food
    def initialize()
        
        $italianFood = {"Italian Pizza" => 220, "burger" =>80}
        $maxicanFood = {"Mexican cuisine" =>250, "Mexican Pizza" =>350}
        $chineseFood = {"Chinese manchurian" =>170, "Chinese Samosa"=>80}
        $southIndianFood = {"Idli"=>50, "Dosa"=>500}
        $northIndianFood = {"Paneer Tikka"=>400, "Chapati"=>800}
        $continentalFood = {"Greek Salad"=>100, "Noodle"=>412}
    end

    def italian
        puts "food"
        $italianFood
    end
    def maxican
        puts "food"
        $maxicanFood
    end
    def chinese
        puts "food"
        $chineseFood
    end
    def southIndian
        puts "food"
        $southIndianFood
    end
    def northIndian
        puts "food"
        $northIndianFood
    end
    def continental
        puts "food"
        $continentalFood
    end
end

class Veg < Food
    def chooseMe

    end
end

class NonVeg < Food
    def chooseMe

    end 
end

module Category
    def Category::foodCat
        rate = 0
        puts "Select food category(---Veg(v)|NonVeg(n)---(for Veg enter v else non-veg will be considered ))"
        foodCat = gets.chomp
        if(foodCat=="v")

            obj = Veg.new
            ob = Food.new
            list
            $selectedCat = gets.chomp
            selectionOfItem $selectedCat
            myData = foodCat +"_"+ $selectedCat +"_"+ $selectedItem
            
            $myItems << myData

        else
            obj = NonVeg.new
            list
            $selectedCat = gets.chomp
            selectionOfItem $selectedCat
            myData = foodCat +"_"+ $selectedCat +"_"+ $selectedItem
            $myItems << myData

        end

         myIt= 0
         if(foodCat=="v")
            case $selectedCat.to_i
            when 1
                case $selectedItem.to_i
                    when 1
                        myIt = "Italian Pizza"
                        puts "Italian Pizza"
                    when 2
                        myIt = "burger"
                        puts "burger"
                end
            when 2
                case $selectedItem.to_i
                    when 1
                        myIt = "Mexican cuisine"
                    when 2
                        myIt = "Mexican Pizza"
                end 
            when 3
                case $selectedItem.to_i
                    when 1
                        myIt = "Chinese manchurian"
                    when 2
                        myIt = "Chinese Samosa"
                end
            when 4
                case $selectedItem.to_i
                    when 1
                        myIt = "Idli"
                    when 2
                        myIt = "Dosa"
                end
            when 5
                case $selectedItem.to_i
                    when 1
                        myIt = "Paneer Tikka"
                    when 2
                        myIt = "Chapati"
                end
            when 6
                case $selectedItem.to_i
                    when 1
                        myIt = "Greek Salad"
                    when 2
                        myIt = "Noodle"
                end
            end
        else
            case $selectedCat.to_i
            when 1
                case $selectedItem.to_i
                    when 1
                        myIt = "Italian Pizza non"
                        puts "Italian Pizza"
                    when 2
                        myIt = "burger non"
                        puts "burger"
                end
            when 2
                case $selectedItem.to_i
                    when 1
                        myIt = "Mexican cuisine non"
                    when 2
                        myIt = "Mexican Pizza non"
                end 
            when 3
                case $selectedItem.to_i
                    when 1
                        myIt = "Chinese manchurian non"
                    when 2
                        myIt = "Chinese Samosa non"
                end
            when 4
                case $selectedItem.to_i
                    when 1
                        myIt = "Idli non"
                    when 2
                        myIt = "Dosa non"
                end
            when 5
                case $selectedItem.to_i
                    when 1
                        myIt = "Paneer Tikka non"
                    when 2
                        myIt = "Chapati non"
                end
            when 6
                case $selectedItem.to_i
                    when 1
                        myIt = "Greek Salad non"
                    when 2
                        myIt = "Noodle non"
                end
            end

        end

        $oo[myIt] = $oo[myIt].to_i - 1;
        CSV.open("cart.csv", "wb") {|csv| $oo.to_a.each {|elem| csv << elem} }


    end
    def Category::list
        puts "Select item Category.."
        puts "1.    Italian Food"
        puts "2.    Maxican Food"
        puts "3.    Chinese Food"
        puts "4.    South Indian Food"
        puts "5.    North Indian Food"
        puts "6.    Continental Food"
    end
    def Category::selectionOfItem p1
        case p1.to_i
        when 1
            $italianFood.each_with_index do |(k,v), i|
                puts "#{i+1}. #{k} => Rs.#{v}"
            end
        when 2
            $maxicanFood.each_with_index do |(k,v), i|
                puts "#{i+1}. #{k} => Rs.#{v}"
            end
        when 3 
            $chineseFood.each_with_index do |(k,v), i|
                puts "#{i+1}. #{k} => Rs.#{v}"
            end
        when 4
            $southIndianFood.each_with_index do |(k,v), i|
                puts "#{i+1}. #{k} => Rs.#{v}"
            end
        when 5
            $northIndianFood.each_with_index do |(k,v), i| 
                puts "#{i+1}. #{k} => Rs.#{v}"
            end
        when 6
            $continentalFood.each_with_index do |(k,v), i|
                puts "#{i+1}. #{k} => Rs.#{v}"
            end
        end

        $selectedItem = gets.chomp


    end

end

Info::getInfo
$myCat = {"1" => "Italian Food", "2" => "Maxican Food", "3" => "Chinese Food", "4" => "South Indian Food", "5" => "North Indian Food", "6" => "Continental Food"}
begin
Category::foodCat
puts "Do you want to select more item?(y/n)"
yOn = gets.chomp
end while(yOn=="y"||yOn == "Y")


$myItems.each_with_index do |k,i|
    separatedItem = k.split('_')
    # if(separatedItem[1].to_i-1)
    # puts "something #{separatedItem[1].to_i}"
    puts "Category:: #{$myCat[separatedItem[1]]}"
    case separatedItem[1].to_i
    when 1
        item = 0
        itemrate = 0
        $italianFood.each_with_index do |(k,v), i|
            if i==(separatedItem[2].to_i-1)
                item = k
                itemrate = v
            end
        end
        if separatedItem[0]=="v"
            puts "#{i.to_i+1}--------#{item}\t Rs.#{itemrate}"
        else
            puts "#{i.to_i+1}--------#{item} NON\t Rs.#{itemrate}"
        end
    when 2
        item = 0
        itemrate = 0
        $maxicanFood.each_with_index do |(k,v), i|
            if i==(separatedItem[2].to_i-1)
                item = k
                itemrate = v
            end
        end
        if separatedItem[0]=="v"
            puts "#{i.to_i+1}--------#{item}\t Rs.#{itemrate}"
        else
            puts "#{i.to_i+1}--------#{item} NON\t Rs.#{itemrate}"
        end
    when 3
        item = 0
        itemrate = 0
        $chineseFood.each_with_index do |(k,v), i|
            if i==(separatedItem[2].to_i-1)
                item = k
                itemrate = v
            end
        end
        if separatedItem[0]=="v"
            puts "#{i.to_i+1}--------#{item}\t Rs.#{itemrate}"
        else
            puts "#{i.to_i+1}--------#{item} NON\t Rs.#{itemrate}"
        end
    when 4
        item = 0
        itemrate = 0
        $southIndianFood.each_with_index do |(k,v), i|
            if i==(separatedItem[2].to_i-1)
                item = k
                itemrate = v
            end
        end
        if separatedItem[0]=="v"
            puts "#{i.to_i+1}--------#{item}\t Rs.#{itemrate}"
        else
            puts "#{i.to_i+1}--------#{item} NON\t Rs.#{itemrate}"
        end
    when 5
        item = 0
        itemrate = 0
        $northIndianFood.each_with_index do |(k,v), i|
            if i==(separatedItem[2].to_i-1)
                item = k
                itemrate = v
            end
        end
        if separatedItem[0]=="v"
            puts "#{i.to_i+1}--------#{item}\t Rs.#{itemrate}"
        else
            puts "#{i.to_i+1}--------#{item} NON\t Rs.#{itemrate}"
        end
    when 6
        item = 0
        itemrate = 0
        $continentalFood.each_with_index do |(k,v), i|
            if i==(separatedItem[2].to_i-1)
                item = k
                itemrate = v
            end
        end
        if separatedItem[0]=="v"
            puts "#{i.to_i+1}--------#{item}\t Rs.#{itemrate}"
        else
            puts "#{i.to_i+1}--------#{item} NON\t Rs.#{itemrate}"
        end
    end
    # puts ""
    # puts "#{k}"
end
puts "Do you want to remove any item? (y/n)"
yorChoice = gets.chomp
if(yorChoice=="y")
    puts "Enter item number to remove.."
    yorRemove = gets.chomp.to_i

end