class Amazon
    NAME = "Well-Come to Amazon Store"
    def set_details
        @billno=0
        @sub_total=0
        @total_item=[]
        puts "Enter the Name"
        @name=gets.chomp
        @billno+=1
        puts @billno
        buy_products()
    end
    
    private
    def buy_products 

     @@categories=[]
     @@categories=["Electronics","Appliance","Clothing","Footwear","Toys"]
       for i in (0..@@categories.length-1)
        puts "Press - #{i+1} for #{@@categories[i]}"
       end
       choice=gets.chomp.to_i

       h1={"Laptop"=>50000,"Phone"=>25000,"TV"=>95000}
       h2={"Vacume_cleaner"=>5000,"Microwave"=>8000,"Chainshaw"=>13000}
       h3={"Shirt"=>800,"Jogger"=>1500,"T-shirt"=>600}
       h4={"Shoes"=>2000,"Sneaker"=>2100,"Sandle"=>1000}
       h5={"Cars"=>200,"Bike"=>150,"ball"=>80}

        case choice
        when 1
            h1.each_with_index do |(k,v), ind|
                puts "Press #{ind+1} for #{k} = #{v}"
            end
        select_items(h1)
        when 2
            h2.each_with_index do |(k,v), ind|
                puts "Press #{ind+1} for #{k} = #{v}"
            end
            select_items(h2)
        when 3
            h3.each_with_index do |(k,v), ind|
                puts "Press #{ind+1} for #{k} = #{v}"
            end
        select_items(h3)
        when 4
            h4.each_with_index do |(k,v), ind|
                puts "Press #{ind+1} for #{k} = #{v}"
            end
        select_items(h4)
        when 5
            h5.each_with_index do |(k,v), ind|
                puts "Press #{ind+1} for #{k} = #{v}"
            end
        select_items(h5)
        else
        puts "Inavalid Input"
        end
    end

    private
  def select_items (h={})
      item_details=[]
      total=0
      keys=h.keys
      choice2=gets.chomp.to_i
      puts "Enter the Quantity"
      qty=gets.chomp.to_i
      item_value=h[keys[choice2-1]].to_i
      item_name=h.key(item_value)
      item_details.push(item_name)
      item_details.push(item_value)
      item_details.push(qty)
      total=(item_value.to_i)*(qty.to_i)
      item_details.push(total)
      @sub_total=@sub_total+total.to_i
      puts item_details
      @total_item << item_details
      print @total_item,"\n"
      #   printing (@total_item)

      puts "Do u want to buy another product"
      ans=gets.chomp
      if(ans=="y" || ans=="Y")
           buy_products()
      else
            printing (@total_item)
      end
   end

    private
    def printing (t)
       #    puts "#{t}"
       puts "##############################################################" 
       puts Amazon::NAME
       puts "Customer Name => #{@name}"
       puts "Your bill no => #{@billno}"
       puts "=============================================================="
       puts " Sr.no     Item      Price     Qty       Total     "
       puts "--------------------------------------------------------------"
       #    puts " 1      #{t[0]}      #{t[1]}       #{t[2]}      #{t[3]}    "
       for i in (0..(t.length-1))
           puts "  #{i+1}       #{t[i][0]}     #{t[i][1]}      #{t[i][2]}         #{t[i][3]}    "
       end
       puts "==============================================================="
       puts "Your Grand total is  =>  #{@sub_total} INR"
       puts "---------------------------Thank you---------------------------"
       savebill(t)
    end
    private
    def savebill(t)
        file = File.new("AmazonBill1.txt", "w")
        file.syswrite("##############################################################\n")
        file.syswrite(" #{NAME} \n Name of Customer => #{@name} \n Bill no. => #{@billno} \n")
        file.syswrite("==============================================================\n")
        file.syswrite(" Sr.no     Item      Price     Qty       Total     \n")
        file.syswrite("--------------------------------------------------------------\n")
        for i in (0..(t.length-1))
            file.syswrite("  #{i+1}       #{t[i][0]}     #{t[i][1]}      #{t[i][2]}         #{t[i][3]}    \n")
        end
        file.syswrite("===============================================================\n")
        file.syswrite("Your Grand total is  =>  #{@sub_total} INR\n")
        file.syswrite("---------------------------Thank you---------------------------\n")
        file.close
        read_bill
    end

    private
    def read_bill
        file = File.new("AmazonBill1.txt", "r")
        puts file.readlines
        file.close
    end
end

obj=Amazon.new
obj.set_details






