def game
    c=[]
    puts "Enter the number of Players"
    no=gets.chomp.to_i
    puts "Enter the Difference"
    df=gets.chomp.to_i
    puts "============================================================="
    for i in (0..(no-1))
        c[i]=i
    end
    count=0
    while (c.length>1) do
        for i in 0..(c.length-1)
            if count==(df)
                puts "deleted element is #{c[0]}"
                c.delete_at(0)
                count=0
            elsif count<df
                a=c[0]
                c.delete_at(0)
                c.push(a) 
            end
            count+=1
        end
    end
    puts "============================================"
    puts "Winner is Player = #{c[0]}"
    puts "============================================"
end
game()