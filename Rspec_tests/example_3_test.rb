# same as example_2.rb only difference is function is in other file in this.

require '/home/bhargav/Desktop/Ruby/Rspec_tests/example_3_class' 

describe StringAnalyzer do 
   context "With valid input" do 
      it "should detect when a string contains vowels" do    # it means example.
        sa = StringAnalyzer.new 
        test_string = 'Udsfc' 
        expect(sa.has_vowels? test_string).to be true 
        puts test_string
      end 
		
      it "should detect when a string doesn't contain vowels" do 
        sa = StringAnalyzer.new 
        test_string = 'bcdfg' 
        expect(sa.has_vowels? test_string).to be false
        puts test_string
      end 
   end 
end
