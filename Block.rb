#块由大量代码组成
# 需要给块取名
# 块代码包含在{}内
# 块总是从与其具有相同名称的函数调用
#   如果块名称叫test，则使用函数test调用
# 可以使用yield语句掉用块
#
# 语法：
#   block_name{
#     statement1
#     statement2
#     .........
#   }
def test
  puts "在test方法内部"
  yield
  puts "你优惠带了test方法内部"
  yield
end

test { puts "你现在代码块内" }

#yield调用可以传递参数：
def test
  yield 5
  puts "在新的test方法内"
  yield 100
end

test do |i|
  i = i * 2
  puts i
end

test { |i| puts "你在块 #{i} 内" }

#BEGIN和END块：
# 每个 Ruby 源文件可以声明当文件被加载时要运行的代码块（BEGIN 块），以及程序完成执行后要运行的代码块（END 块）
BEGIN {
  # BEGIN 代码块
  puts "BEGIN 代码块"
}

END {
  # END 代码块
  puts "END 代码块"
}
# MAIN 代码块
puts "MAIN 代码块"