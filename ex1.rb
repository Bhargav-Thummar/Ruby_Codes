def fact(n)
   if n<1
      raise "Argument must be > 0"
  elsif n==1
    1
  else
    n*fact(n-1)
  end
end

puts fact(1)
puts fact(5)
puts fact(0)
