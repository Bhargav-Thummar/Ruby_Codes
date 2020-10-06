class My
    @@classvar = 10
    def def1
        #  @classvar = 20
        puts @@classvar
    end
    def def2
        puts @@classvar
    end
end

class Your
    def def2
        puts @@classvar
    end
end

obj = My.new
obj.def1
obj.def2
# obj1 = Your.new
# obj1.def2

