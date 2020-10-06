require 'csv'
CSV.open("restaurant2.csv","w",:write_headers=> true,:headers=>["Item_name","qty"]) do |csv|
    csv << ["Veg italian",10]
    csv << ["Veg maxican",10]
    csv << ["Veg chinese",10]
    csv << ["Veg south indian",10]
    csv << ["Veg north indian",10]
    csv << ["Veg Continental",10]
    csv << ["Non veg italian",10]
    csv << ["Non veg maxican",10]
    csv << ["Non veg chinese",10]
    csv << ["Non veg south_indian",10]
    csv << ["Non veg north_indian",10]
    csv << ["Non veg continental",10]
end

csvObj = CSV.read("restaurant2.csv")   #csvObj is array as object
$csv_hash = csvObj.to_h
puts $csv_hash

module Food
        def Food::start
            c1=Customer.new
            c1.details
        end

        def Food::set_details(a)
            b=a
            buy_products(b)
        end
        
        private
        def Food::buy_products(b) 

         if(b==1)
            @@Veg_categories=[]
            @@Veg_categories=["Italian","Maxican","Chinese","South Indian","North Indian","Continental"]
           for i in (0..@@Veg_categories.length-1)
            puts "Press - #{i+1} for #{@@Veg_categories[i]}"
           end
           choice=gets.chomp.to_i
    
           h1={"Veg italian"=>500}
           h2={"Veg maxican"=>200}
           h3={"Veg chinese"=>120}
           h4={"Veg south indian"=>250}
           h5={"Veg north indian"=>200}
           h6={"Veg Continental"=>400}
    
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
            when 6
            h6.each_with_index do |(k,v), ind|
                puts "Press #{ind+1} for #{k} = #{v}"
            end
            select_items(h6)
            else
            puts "Inavalid Input"
            end

       elsif(b==2)

       @@Non_veg_categories=[]
       @@Non_veg_categories=["Italian","Maxican","Chinese","South Indian","North Indian","Continental"]
       for i in (0..@@Non_veg_categories.length-1)
        puts "Press - #{i+1} for #{@@Non_veg_categories[i]}"
       end
       choice=gets.chomp.to_i

       h1={"Non veg italian"=>300}
       h2={"Non veg maxican"=>800}
       h3={"Non veg chinese"=>420}
       h4={"Non veg south_indian"=>550}
       h5={"Non veg north_indian"=>600}
       h6={"Non veg continental"=>900}

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
        when 6
        h6.each_with_index do |(k,v), ind|
            puts "Press #{ind+1} for #{k} = #{v}"
        end
        select_items(h6)
        else
        puts "Inavalid Input"
        end
    end
   end

    private
    def Food::select_items (h={})
            item_details=[]
            total=0
            keys=h.keys
            choice2=gets.chomp.to_i
            puts "Enter the Quantity" 
            qty=gets.chomp.to_i
            item_value=h[keys[choice2-1]].to_i
            item_name=h.key(item_value)

          if (qty>$csv_hash[item_name].to_i)
             puts "Sorry ! #{item_name} is not in require stock.\nOnly #{$csv_hash[item_name]} #{item_name} is remaining"
          else

             $csv_hash[item_name] = $csv_hash[item_name].to_i-qty;
             CSV.open("restaurant2.csv", "wb") {|csv| $csv_hash.to_a.each {|elem| csv << elem} }

             item_details.push(item_name)
             item_details.push(item_value)
             item_details.push(qty)
             total=(item_value.to_i)*(qty.to_i)
             item_details.push(total)
             $Grand_total=$Grand_total+total.to_i
             puts item_details
             $customer_details << item_details
             print $customer_details,"\n"
             #   printing (@total_item) 
          end    
      end

      def Food::edit()
        puts "Enter the sr.no to delete that item"
        ans3=gets.chomp.to_i
        puts $customer_details[ans3-1]
        Food::check_stock($customer_details[ans3-1])
      end

      def Food::check_stock(a)
            $csv_hash[a[0]]=$csv_hash[a[0]].to_i+a[2]
            puts "Edit the number of quantity and for delete that item enter 0)"
            qty2=gets.chomp.to_i

            $Grand_total=$Grand_total.to_i-(a[3]).to_i
            CSV.open("restaurant2.csv", "wb") {|csv| $csv_hash.to_a.each {|elem| csv << elem} }
            puts $Grand_total

            # puts "vvvvvvvvvv",$csv_hash[a[0]].to_i

        if($csv_hash[a[0]].to_i<qty2.to_i)
            puts a
            puts "Sorry...#{a[0]} is not in require stock./n Only #{$csv_hash[a[0]]}  #{a[0]} is remaining}"
        else
            # $Grand_total=@grand_total.to_i-(a[3]).to_i
            $csv_hash[a[0]] = $csv_hash[a[0]].to_i-qty2.to_i;
            a[2]=qty2
            a[3]=qty2*a[1]
            $Grand_total=$Grand_total.to_i+(a[3]).to_i
            # puts "-----------------"
            # puts $csv_hash[a[0]]
            # puts "-----------------"

            CSV.open("restaurant2.csv", "wb") {|csv| $csv_hash.to_a.each {|elem| csv << elem} }
        end

        # if($csv_hash[a[0]].to_i>=qty2.to_i)

        #     $Grand_total=@grand_total-(a[3])
        #     $csv_hash[a[0]] = $csv_hash[a[0]].to_i-qty2;
        #     a[2]=qty2
        #     a[3]=qty2*a[2]
        #     $Grand_total=@grand_total-(a[3])
        #     CSV.open("restaurant2.csv", "wb") {|csv| $csv_hash.to_a.each {|elem| csv << elem} }
        # else 
        #     # puts "Sorry...#{a[0]} is not in require stock./n Only #{$cvs_hash[a[0]]} #{a[0]} is remaining}"
        #     # c1.choice()
        #     puts "==============#####@@@@@"
        # end
    end
end

module For_File
    def For_File::set_details(t,p)
        file = File.new("RestaurantBill2.txt", "w")
        file.syswrite("##############################################################\n")
        file.syswrite(" Customer Name => #{p[0]} \n")
        file.syswrite(" Phone No. => #{p[1]} \n")
        file.syswrite("==============================================================\n")
        file.syswrite(" Sr.no     Item      Price     Qty       Total     \n")
        file.syswrite("--------------------------------------------------------------\n")
        for i in (0..(t.length-1))
            file.syswrite("  #{i+1}       #{t[i][0]}     #{t[i][1]}      #{t[i][2]}         #{t[i][3]}    \n")
        end
        file.syswrite("===============================================================\n")
        file.syswrite("Your Grand total is  =>  #{$Grand_total} INR\n")
        file.syswrite("---------------------------Thank you---------------------------\n")
        file.close
    end
end

class Customer

    # include Veg
    # include Non_veg

    $Grand_total=0
    $customer_details=[]
    $customer_info=[]

    def details
        puts "Enter the name =>"
        name=gets.chomp
        puts "Enter the phone No =>"
        phone_no=gets.chomp
        # choice()
        
        if ((/^([0-9]{10})$/.match?(phone_no)) and (/^([a-zA-Z]+\D)$/.match?(name)))
            $customer_info.push(name)
            $customer_info.push(phone_no)
            choice()
        else
            puts "NOT VALID DETAILS"
            details()
        end
    end

    def choice
        puts "Press-1 for Veg. \nPress-2 for Non-Veg"
        category_choice=gets.chomp.to_i
        if (category_choice==1)
            Food::set_details(1)
        elsif (category_choice==2)
            Food::set_details(2)
        else
            puts "Invalid Input"
        end

        puts "Do your want edit your bill...?"
        ans1=gets.chomp
        if(ans1=='y' or ans1=='Y')
          Food::edit()
        end
          
        puts "Do u want to buy another product"
        ans2=gets.chomp
        if(ans2=="y" || ans2=="Y")
            choice()
        else
            # printing (@@customer_details)
            print_data($customer_details,$customer_info)
        end
    end

    def print_data(t,p)
    #    puts "#{t}"
       puts "##############################################################" 
       puts "Customer Name => #{p[0]}"
       puts "Phone No. => #{p[1]}"
       puts "=============================================================="
       puts " Sr.no     Item             Price     Qty       Total     "
       puts "--------------------------------------------------------------"
    #    puts " 1      #{t[0]}      #{t[1]}       #{t[2]}      #{t[3]}    "
       for i in (0..(t.length-1))
           puts " #{i+1}    #{t[i][0]}         #{t[i][1]}      #{t[i][2]}         #{t[i][3]}      "
       end
       puts "==============================================================="
       puts "Your Grand total is  =>  #{$Grand_total} INR"
       puts "---------------------------Thank you---------------------------"
       For_File::set_details(t,p)
    end
end



Food::start
# c1=Customer.new
# c1.details