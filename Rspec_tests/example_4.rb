describe "An example of the Matchers" do 
   it "should show how the Matchers work" do 
      a = "test string" 
      b = a
      
      expect(a).to eq "test string"       # expect(a).to eq b will complile sucessfully.
      expect(a).to eql "test string"      # expect(a).to eql b will complile sucessfully.
      expect(a).to be b                   # expect(a).to be "test string" will give error.
      expect(a).to equal b                # expect(a).to equal "test string" will give error.
      expect(a).equal? "test string"      # expect(a).to equal? "test string" will give error.
      expect(a).equal? b                  # expect(a).to equal? b will give error.


      num_1 = 5
      num_2 = 10
      num_3 = num_1
      
      expect(num_1).not_to eq num_2       # expect(num_1).to eq 5 will compile successfully. but expect(num_1).to eq < num_2 will give error => wrong number of arguments.
      expect(num_1).not_to eql num_2      # expect(num_1).to eql 5 will compile successfully. but expect(num_1).to eql < num_2 will give error => wrong number of arguments.
      expect(num_1).not_to be num_2       # expect(num_1).to be 5 will compile successfully.
      expect(num_1).to be num_3
      expect(num_1).to be < num_2


      x = 1 
      y = 3.14 
      z = 'test string' 
      
      expect(x).to be_instance_of Integer 
      expect(y).to be_kind_of Numeric 
      expect(z).to respond_to(:length)


      expect { 1/0 }.to raise_error(ZeroDivisionError)
      expect { 1/0 }.to raise_error("divided by 0") 
      expect { 1/0 }.to raise_error("divided by 0", ZeroDivisionError) 
   end
end

=begin 
  => error message :
  Compared using equal?, which compares object identity, but expected and actual are not the same object. Use `expect(actual).to eq(expected)` if you don't care about object identity in this example.
=end