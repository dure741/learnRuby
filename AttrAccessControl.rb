class Man
  #attr_accessor :sex
  #等同于读写方法
  #attr_writer :age
  #等同于只写方法
  #attr_reader :name
  #这个写法等同于只读写法

  def initialize(name, sex)
    @name = name
    @age = 16
    @sex = sex
  end

  #只读
  def get_name
    return @name
  end

  #只写
  def set_age(age)
    @age = age
  end

  #读写
  def get_sex
    return @sex
  end

  def set_sex(sex)
    @sex = sex
  end
end

t = Man.new("天恩", "male")
puts t.get_name
puts t.get_sex
t.set_sex("man")
puts t.get_sex
t.set_age(22)