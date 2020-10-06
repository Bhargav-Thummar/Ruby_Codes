h=Hash.new
h={"a"=>10,"b"=>"ram","c"=>"we"}

#From to key to value
puts h["a"]

#from value to key
puts h.key(10)

#from index to key
puts h.keys[0]

#From to index to value
puts h[h.keys[0]]


