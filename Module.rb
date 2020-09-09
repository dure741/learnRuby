#模块：
# 模块是一种把方法、类和常量组合在一起的方式。
# Modole提供了命名空间，避免名字冲突
# 模块实现了mixin装置
# 模块和类的区别：
#   模块不能实例化
#   模块没有子类
#   模块只能被另一个模块定义
# 语法：
# module Identifier
#    statement1
#    statement2
#    ...........
# end


#模块常量命名与类常量命名类似，以大写字母开头。方法定义看起来也相似：模块方法定义与类方法定义类似。
#
# 通过类方法，您可以在类方法名称前面放置模块名称和一个点号来调用模块方法，您可以使用模块名称和两个冒号来引用一个常量。

module Trig
  PI = 3.141592654

  def Trig.sin(x)
    puts "sin(#{x})"
  end

  def Trig.cos(x)
    puts "cos(#{x})"
  end
end

module Moral
  VERY_BAD = 0
  BAD = 1

  def Moral.sin(badness)
    puts BAD
    puts VERY_BAD
  end
end