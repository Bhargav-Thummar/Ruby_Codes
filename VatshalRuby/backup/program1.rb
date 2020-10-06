#Program1
#Vatsal Mewada

def myBlock
    myHash = {"1st"=>"January","2nd"=>"February","3rd"=>"March","4th"=>"April","5th"=>"May","6th"=>"June","7th"=>"July","8th"=>"August","9th"=>"September","10th"=>"October","11th"=>"November","12th"=>"December"}
    myHash.each do |k, v|
        yield "#{k}", "#{v}"
    end
end

myBlock{|k, v| puts "#{k} month is #{v}"}