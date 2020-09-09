class Man
  def initialize(name, age)
    #@类似与Java中的this用法，意义可能不同
    @name = name
    @age = age
  end

  def sayname
    puts @name
  end

  def sayage
    puts @age
  end
end


a = Man.new("a", 22)
b = Man.new("b", 23)
a.sayname
puts "重写单态方法"

def a.sayname
  puts "aaaaaaaaaaaaaa"
end

a.sayname
