#可变数量参数方法
def sample (*test)
  puts "参数个数为 #{test.length}"
  for i in 0...test.length
    puts "参数值为 #{test[i]}"
  end
end

sample "Zara", "6", "F"
sample "Mac", "36", "M", "MCA"

# 方法定义

def test(a1 = "Ruby", a2 = "Perl")
  puts "编程语言为 #{a1}"
  puts "编程语言为 #{a2}"
end

test "C", "C++"
test

#return语句
def test
  i = 100
  j = 200
  k = 300
  return i, j, k
end

var = test
puts var