
#Vatsal Mewada

#Test


class MyClass
    def myfunction
        puts "Enter number of players..."
        n = gets.chomp.to_i
        puts "Enter the difference..."
        d = gets.chomp.to_i
        arr = [*1..n]

        tempArr = []
        @cnt = d
        @temp = arr[0]
        @myNew = 0
        @myIndex = 0

        while arr.length()>1 do

            @myNew = arr.index(@temp)
            @myIndex = (@myNew.to_i + @cnt.to_i-1)
            
            if(@myIndex.to_i >= arr.length().to_i)
                @myIndex = (@myIndex.to_i)%arr.length().to_i
            end

            @temp = arr[@myIndex.to_i+1]
            puts "player #{arr[@myIndex.to_i]} removed!!"
            arr.delete(arr[@myIndex.to_i])
            
        end
        puts "--------------------------------"
        puts "Player #{arr} won!!"
        puts "--------------------------------"
    end
end

obj = MyClass.new
obj.myfunction
