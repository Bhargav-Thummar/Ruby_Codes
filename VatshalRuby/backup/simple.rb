def b1()
    yield 'vvv', 4 
    
end




b1 {|c, v| puts "Helllo #{c} and #{v}"}