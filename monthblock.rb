def months
    @temp=["January","Februery","March","April","May","June","july","August","September","October","November","December"]
    for i in (1..12) do
      month=@temp[i-1]
      yield month,i
    end
end
months { |x,y| puts "#{y} month = #{x}"}
