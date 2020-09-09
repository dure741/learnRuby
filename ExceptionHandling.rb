#异常处理基本结构：
#   begin
#   ...
#   rescue
#   ...
#   end
# 比较类似java的 try catch finally
#begin开始监视代码运行，类似javatry
#rescue捕捉异常，类似java catch
#
# 重试语句：
#   retry
# 【注意】retry会重新执行begin中的内容

# s=1
# begin
#   s=1/0
#   puts s
# rescue
#   puts "error!"
#   retry
#   #会不停的输出error！
# end
#
#
# 抛出异常：
#   Ruby中使用raise语句抛出异常，类似于java的throw语句
#   异常信息可以被全局变量$！获得
# 例子：
begin
  puts "I am before the raise"
  raise "An error has occurred"
  puts "I am before the raise"
rescue
  puts "error! " + $!
ensure
  puts "keep going"
end


