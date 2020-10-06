# to install setup rspec, only run "sudo apt-get install ruby-rspec" => this is for ruby 2.6.3
# Get:1 http://in.archive.ubuntu.com/ubuntu bionic/universe amd64 ruby-diff-lcs all 1.3-1 [22.2 kB]
# Get:2 http://in.archive.ubuntu.com/ubuntu bionic/universe amd64 ruby-rspec-support all 3.7.0c1e0m0s1-1 [26.5 kB]
# Get:3 http://in.archive.ubuntu.com/ubuntu bionic/universe amd64 ruby-rspec-expectations all 3.7.0c1e0m0s1-1 [82.5 kB]
# Get:4 http://in.archive.ubuntu.com/ubuntu bionic/universe amd64 ruby-rspec-mocks all 3.7.0c1e0m0s1-1 [76.3 kB]                                                          
# Get:5 http://in.archive.ubuntu.com/ubuntu bionic/universe amd64 ruby-thread-order all 1.1.0-1 [5,232 B]                                                                 
# Get:6 http://in.archive.ubuntu.com/ubuntu bionic/universe amd64 ruby-rspec-core all 3.7.0c1e0m0s1-1 [151 kB]                                                            
# Get:7 http://in.archive.ubuntu.com/ubuntu bionic/universe amd64 ruby-rspec all 3.7.0c1e0m0s1-1 [3,492 B]    

# require 'pry'

class HelloWorld
   def say_hello 
      "Hello World!"
   end
end

describe HelloWorld do 
   context "When testing the HelloWorld class" do 
      it "should say 'Hello World' when we call the say_hello method" do 
         hw = HelloWorld.new 
         message = hw.say_hello
         value = expect(message).to eq "Hello World!"
         # value = expect(message).not_to eq "Hello World"
         puts message, value
      end
   end
end
