def fact(n)
    raise " Argument must be > 0" if n<1

    return 1 if n==1
    n*fact(n-1)
end

puts fact(1)
puts fact(4)
puts fact(0)

