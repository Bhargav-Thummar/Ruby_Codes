def polar(x,y)
  return Math.hypot(y,x), Math.atan2(y,x)
end

puts polar(1,1)
