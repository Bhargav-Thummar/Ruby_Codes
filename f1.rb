puts " Hello Wd";

BEGIN {
puts " HI THERE";
}

END{
puts " It is a end";
}

class Bhargav
  def sum(a=10,b=20)
     return a+b;
  end
end

me = Bhargav.new
f=me.sum
puts f;

def su(a=40,b=20)
     return a+b;
end

o=su
puts o
