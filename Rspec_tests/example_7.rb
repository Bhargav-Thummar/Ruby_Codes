# To run this with tag name run command "rspec --tag AA example_6.rb"
# run this rspec example_7.rb both example will execute

describe "How to run specific Examples with Tags" do 
  it 'is a slow test', AA: true do 
    sleep 10    # 10 seconds
    puts 'This test is slow!' 
  end 
  
  it 'is a fast test', BB: true do 
    puts 'This test is fast!' 
  end 
end
