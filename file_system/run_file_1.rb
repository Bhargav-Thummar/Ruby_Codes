# require '/home/bhargav/Desktop/Ruby/file_system/creating_file_1'      

my_file = File.open('out.txt', 'a') { |f|
  f.puts "Hello, world 4."
}

IO.copy_stream('out.txt', 'Main_out.txt')