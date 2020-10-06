class Food < ClassChoice
    def set_details(A)
        a=A
        buy_products(a)
    end
    
    private
    def buy_products(a) 
        if a==2
        @@Non_veg_categories=[]
        @@Non_Veg_categories=["Italian","Maxican","Chinese","South Indian","North Indian","Continental"]
       for i in (0..@@Non_veg_categories.length-1)
        puts "Press - #{i+1} for #{@@Non_veg_categories[i]}"
       end
       choice=gets.chomp.to_i

       h1={"Non veg-italian"=>300}
       h2={"Non-veg-maxican"=>800}
       h3={"Non veg-chinese"=>420}
       h4={"Non veg-south_indian"=>550}
       h5={"Non veg-north_indian"=>600}
       h6={"Non veg-continental"=>900}

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
    elsif a==1
        @@Veg_categories=[]
        @@Veg_categories=["Italian","Maxican","Chinese","South Indian","North Indian","Continental"]
          for i in (0..@@Veg_categories.length-1)
           puts "Press - #{i+1} for #{@@Veg_categories[i]}"
          end
          choice=gets.chomp.to_i
   
          h1={"veg-italian"=>500}
          h2={"veg-maxican"=>200}
          h3={"veg-chinese"=>120}
          h4={"veg-south_indian"=>250}
          h5={"veg-north_indian"=>200}
          h6={"veg-continental"=>400}
   
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
    def select_items (h={})
        item_details=[]
        total=0
        $item_sr_no+=1
        keys=h.keys
        choice2=gets.chomp.to_i
        puts "Enter the Quantity"
        qty=gets.chomp.to_i
        item_value=h[keys[choice2-1]].to_i
        item_name=h.key(item_value)
        item_details.push($item_sr_no)
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

class ClassChoice

    # include Veg
    # include Non_veg

    $Grand_total=0
    $customer_details=[]
    $item_sr_no=0
   
    def choice
        puts "Press-1 for Veg. \nPress-2 for Non-Veg"
        category_choice=gets.chomp.to_i
        if (category_choice==1)
            set_details(1)
        elsif (category_choice==2)
            set_details(2)
        else
            puts "Invalid Input"
        end
        puts "Do u want to buy another product"
        ans=gets.chomp
        if(ans=="y" || ans=="Y")
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
           puts " #{t[i][0]}     #{t[i][1]}      #{t[i][2]}         #{t[i][3]}      #{t[i][4]}"
       end
       puts "==============================================================="
       puts "Your Grand total is  =>  #{$Grand_total} INR"
       puts "---------------------------Thank you---------------------------"
    end
end

module Customer

    def Customer::details()
        $customer_info=[]
        c1=ClassChoice.new
        puts "Enter the name =>"
        name=gets.chomp
        puts "Enter the phone No =>"
        phone_no=gets.chomp
        # choice()
    
        if ((/^([0-9]{10})$/.match?(phone_no)) and (/^([a-zA-Z]+\D)$/.match?(name)))
        $customer_info.push(name)
        $customer_info.push(phone_no)
        c1.choice()
        else
        puts "NOT VALID DETAILS"
        Customer::details()
    end
end

Customer::details()