# 在Ruby中，只有方法，没有函数
# 每一个方法都存在与类中
# 不在任何类中定义的方法实际上属于所有类的父类Obeject
# 理论上子类可以调用父类的方法，但是这让会乱套
# 所以Ruby实际上将不在其他类中定义的方法实现为Object的私有方法
# 所以它不能被对象使用

def my
  puts "my love!"
end

my
s = "good"
# "good"对象无法调用my方法
#s.my
#
#
# Ruby提供三个关键字限制对方法的存取，
# 非常类似C++：
#   1.public：可以为任何对象所存取的方法（public是所有方法的默认设置）
#   2.protected：可以在定义他的实例或者子类的实例中调用
#   3.private：只可以在这个方法所处的对象中被使用，不能直接调用另一个对象的private方法，包括调用自生也不允许
#
#  这些关键字被插在两个方法之间的代码中。所用从private关键字开始定义的方法都是
#  私有的，知道代码中出现另一个存取控制关键字为止
#  一个类的initialize（构造方法）是自动私有的
#
#Ruby和其他面向对象语言的另一个重要不同在于，Ruby动态确定访问控制，在程序运行而不是静止时，只有运行到那一行，才回去判断是否出错
#
#
class Man
  def initialize(name, age)
    @name = name
    @age = age
  end

  private

  def sayname
    puts @name
  end

  def sayage
    puts @age
  end

  public

  def free
    puts "I am public method"
  end

  #也可以在定义之后设置访问控制：
  # 例如：
  #   public :free
  #   private :sayname,:sayage
end


t = Man.new("Man", 22)
t.free
#t.sayname
#t.sayage

