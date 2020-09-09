#Ruby的面向对象比Java纯粹
# 一切都是对象
# 所以Ruby中没有函数
# 只有方法
# Ruby中变量常量不能脱离类而存在
#
# 最简单的类：
#   1.属性
#   2.方法
#
# 类名以大写字母开头
# 实例属性以"@"开头
# 变量和方法名应该用一个小写字母或者下划线开头
#
#
# 例子：
# 顶替“Man”类，包含“name”和“age”两个实例属性、
# “sayname”方法和“sayage”方法
#
# 定义类和方法，使用def ... end 语句块，
# 如果需要返回值，则使用return语句。
# 类的初始化使用 "initialize"方法
# 【initialize】相当于Java和c++的构造方法

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

#定义完成
#【注意】在Ruby中，Object类是所有其他类的父类。
#使用：
man = Man.new("Man", 22)
man.sayname
man.sayage
ruby = Man.new("Ruby", 40)
ruby.sayname
ruby.sayage


# 继承Extends
# Ruby使用“<“符号来实现继承，这和Java中的”extends“和c++中的”：“不同。
# 这里我们继承之前的Man类，实现Son类，增加一个love方法
# 如下：
#
class Son < Man
  def love
    puts "I love my mom!"
  end
end

son = Son.new("儿子", 22)
son.sayname
son.sayage
son.love

#super 增强父类方法，有些类似与重载

class T < Man
  def sayname
    super
    puts "我就不说我名字，我犟"
  end
end

t = T.new("犟拐子", 10)
t.sayname
t.sayage