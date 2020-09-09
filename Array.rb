#数组:
# 任何对象的有序整数索引集合。0开始
# 负数索引相对于数组末尾计数，-1为最后一个。
# Ruby的数组不需要指定大小，添加元素自动增长

names = Array.new
#不指定大小

p names
#此时输出为[]

puts names
#输出了一个换行，没有别的东西

puts names.size
puts names.length

#可以指定长度：
names = Array.new(20)
puts names.size
puts names.length

#给数组赋值
names = Array.new(4, "fuck")
puts names
puts "#{names}"
p names


nums = Array.new(10) { |e| e = e }
p nums

nums2 = Array.new(10) { |i| i = i + 1 }
p nums2

#初始化数组的另一种方法：
nums = Array.[]("fuck", "you", "you", "mother", "fucker")
p nums

#还有另一种：
nums = Array[1, 2, 3, 4, 5]
p nums

#在 Ruby 核心模块中可以有一个只接收单个参数的 Array 方法，该方法使用一个范围作为参数来创建一个数字数组：
digits = Array(1..100)
p digits

#不赋值的方法

puts [1, 2, 3.3][0].class
puts [1, 2, 3.4][2].class


digits = Array(0..9)
num = digits.at(6)
puts num.class
puts num
