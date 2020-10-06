def game
    p=[]
    puts "Enter the number of Players"
    players=gets.chomp.to_i
    puts "Enter the difference"
    df=gets.chomp.to_i
    puts "==========================================================="
    count=0
    ch=0
    for i in (1..players)
       p[i-1]=i
       puts "#{p[i-1]}"
    end
    while (p.length>1) do
        if (df!=ch) && (count<=p.length)
            count+=1
            ch+=1
        elsif (df==ch) && (count<=p.length)
        p.delete_at(count)
        count+=1
        ch=0
        elsif count>p.length
            if ch==df
                count=count-p.length
                p.delete_at(count)
                ch=0
            else
                count=count-p.length
                ch+=1
            end
        end
    end
    puts p[0]
end
game()
            



