class Invoice

    def getNam()
        $totalCost=0
        puts "Enter Name: "
        $Name = gets
        getName()
    end

    
    def getName()
        
        puts "Select any catgory.."
        puts "1.Electronics"
        puts "2.Appliance"
        puts "3.Clothing"
        puts "4.Footwear"
        puts "5.Toys"

        scn = gets.chomp.to_i
        
        h1 = {"Tv"=> 50000, "Mobile"=> 12000}
        h2 = {"Chair"=> 1000, "Bed"=> 10000}
        h3 = {"Shirt"=> 500, "Pent"=> 2000}
        h4 = {"Boot"=> 3000, "Shoes"=> 2000}
        h5 = {"Elephent"=> 500, "Car" => 700}

        # (h+scn).each do |k,v|
        #     puts "#{k} and #{v}"
        # end
        puts "\n","Products are as follow..."

        case scn
        when 1
            h1.each do |k,v|
                puts "#{k}:  Rs.#{v}"
            end
        when 2
            h2.each do |k,v|
                puts "#{k}:  Rs.#{v}"
            end
        when 3
            h3.each do |k,v|
                puts "#{k}:  Rs.#{v}"
            end
        when 4
            h4.each do |k,v|
                puts "#{k}:  Rs.#{v}"
            end
        when 5
            h5.each do |k,v|
                puts "#{k}:  Rs.#{v}"
            end
        end

        puts "Enter number to select product.. "
        spn = gets.chomp.to_i

        puts "Enter Quantity of selected product.. "
        sqn = gets.chomp.to_i

        sty = scn.to_s + "_" +spn.to_s+ "_" +sqn.to_s
        # myProducts << sty
        $myProducts << sty   
        # puts $myProducts
        # # puts h1.keys[0]

        puts "\n Do you want to add more products?(Y/N).."
        ans = gets.chomp

        if(ans == "Y" || ans == "y")
            getName()
        end


        puts "\n\n:::Invoice:::\n"
        puts "Full Name: "+ $Name + "\n"

        $myProducts.each_with_index{|val, index| 
        
            # puts "#{val} and #{index}"
            product = val.split('_')
            # puts product
            print "Category:: "
            case product[0].to_i
            when 1
                puts "------Electronics------"
                print "Product:: ",h1.keys[(product[1].to_i-1)], " || Qty: ", product[2], " || Price: ", product[2].to_i*h1.values[(product[1].to_i-1)].to_i,"\n"
                $totalCost += product[2].to_i*h1.values[(product[1].to_i-1)].to_i
            when 2
                puts "------Appliance------"
                print "Product:: ",h2.keys[(product[1].to_i-1)], " || Qty: ", product[2], " || Price: ", product[2].to_i*h2.values[(product[1].to_i-1)].to_i,"\n"
                $totalCost += product[2].to_i*h2.values[(product[1].to_i-1)].to_i
            when 3
                puts "------Clothing------"
                print "Product:: ",h3.keys[(product[1].to_i-1)], " || Qty: ", product[2], " || Price: ", product[2].to_i*h3.values[(product[1].to_i-1)].to_i,"\n"
                $totalCost += product[2].to_i*h3.values[(product[1].to_i-1)].to_i
            when 4
                puts "------Footwear------"
                print "Product:: ",h4.keys[(product[1].to_i-1)], " || Qty: ", product[2], " || Price: ", product[2].to_i*h4.values[(product[1].to_i-1)].to_i,"\n"
                $totalCost += product[2].to_i*h4.values[(product[1].to_i-1)].to_i
            when 5
                puts "------Toys------"
                print "Product:: ", h5.keys[(product[1].to_i-1)], " || Qty: ", product[2], " || Price: ", product[2].to_i*h5.values[(product[1].to_i-1)].to_i,"\n"
                $totalCost += product[2].to_i*h5.values[(product[1].to_i-1)].to_i
            end


            
        }

        puts "\n\nTotal Cost: #{$totalCost} + (18%GST): #{($totalCost.to_i)*18/100}"
        puts "-------------Total amount to be paid: Rs. #{$totalCost+($totalCost.to_i)*18/100}/-"
    
        exit 1

    end
end

$myProducts = []
obj = Invoice.new
obj.getNam