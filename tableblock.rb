def table
    for i in (0..2) do 
        puts "Enter the table of any number"
        no=gets.chomp.to_i
        for j in (1..10) do 
            yield no,j
        end
    end
end
table { |no,x| puts"#{no}*#{x} = #{no*x}"}