class Arr
    def getvalue
        value=[]
        i=0
      while i<4 
       value[i]=gets.chomp.to_i
       puts value[i]
       i+=1
       end
    end
end

obj1=Arr.new
obj1.getvalue