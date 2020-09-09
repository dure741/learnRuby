#条件判断：
#   Ruby中只有false和nil值为假，其余都为真，
#   unless和if用法相同语义相反。
#
#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

$age = 5
case $age
when 0..2
  puts "婴儿"
when 3..6
  puts "小孩"
when 7..12
  puts "child"
when 13..18
  puts "少年"
else
  puts "其他年龄段的"
end


#循环：
i = 1
while i <= 10 do
  puts i
  i += 1 #Ruby中没有i++
end


i = 1
while i <= 10;
  #这里不是冒号
  puts i
  i += 1 #Ruby中没有i++
end

#do 和 分号可以省略

#类似do while
$i = 0
$num = 5
begin
  puts("在循环语句中 i = #$i")
  $i += 1
end while $i < $num

#until 和while用法相同语义相反

#for循环
# for variable [, variable ...] in expression [do]
#    code
# end
for i in 0..5
  puts "局部变量的值为 #{i}"
end

#for in 循环几乎完全等价于
# (expression).each do |variable[, variable...]| code end


(0..5).each do |i|
  puts "局部变量的值为 #{i}"
end


#break：终止最内部循环
# 在块内调用 终止相关块方法，返回为nil
# next跳到循环下一个迭代
# 块内调用next，终止块执行，yield变法返回nil
#rebo
# 重新开始最内部循环的该次迭代，不检查循环条件。如果在块内调用，则重新开始 yield 或 call。
# 用法和上两个相似
#
# 如果 retry 出现在 begin 表达式的 rescue 子句中，则从 begin 主体的开头重新开始。
#
# begin
#    do_something   # 抛出的异常
# rescue
#    # 处理错误
#    retry          # 重新从 begin 开始
# end
# 如果 retry 出现在迭代内、块内或者 for 表达式的主体内，则重新开始迭代调用。迭代的参数会重新评估。
#
# for i in 1..5
#    retry if some_condition # 重新从 i == 1 开始
# end