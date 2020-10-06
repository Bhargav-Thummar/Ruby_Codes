# Program 2
# Vatsal Mewada

def myBlock
    puts "Multiplication Table of 2"
    yield 2
    puts "\nMultiplication Table of 3"
    yield 3
    puts "\nMultiplication Table of 4"
    yield 4

end

myBlock do |n|

    for i in (1..10)
        puts "#{n} * #{i} = #{n*i}"
    end
    puts ""

end