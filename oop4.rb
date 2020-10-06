class Accounts

   private
   def reading_charge
    puts "Only instatnce method"
   end

   def Accounts.return_date
    puts "It is Class method"
   end
end

class Accholder < Accounts
    public
    def reading_book
        puts "it is child class's method"
        reading_charge
    end
end

# obj=Accounts.new
# obj.reading_charge
# Accounts.return_date
# obj.return_date  #it gives an error

obj1=Accholder.new
obj1.reading_book


