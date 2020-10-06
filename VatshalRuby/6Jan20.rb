require 'date'
class MyClass

    def myMethod()

        puts "Enter your birthday.."
        puts "Enter Date: "
        myDate = gets.chomp
        puts "Enter Month: "
        myMonth = gets.chomp
        puts "Enter Year: "
        myYear = gets.chomp
        puts "Enter Hours: "
        myHours = gets.chomp
        puts "Enter Minute: "
        myMinute = gets.chomp

        birthDate = Time.local(myYear, myMonth, myDate, myHours, myMinute).to_time
        puts "Age:"
        birthTime = birthDate.to_i

        currentTime = DateTime.now.strftime('%s')

        differenceTime = currentTime.to_i - birthTime.to_i
      
        difYear = differenceTime.to_i/31536000
        puts "You are #{difYear} years"
        temp = differenceTime.to_i - (difYear.to_i * 31536000)
        difMonth = temp /2592000
        puts " #{difMonth} Months"
        temp = temp - (difMonth * 2592000)

        difDay =  (temp) /86400
        puts " #{difDay} Days"
        temp = temp - (difDay * 86400)

        difHour = temp/3600
        puts " #{difHour} hours"
        temp = temp - (difHour * 3600)
        difMin = temp/60
        puts " #{difMin} minutes"
 
    end

end

obj = MyClass.new()
obj.myMethod()