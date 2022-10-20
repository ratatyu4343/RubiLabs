require "test/unit"

def functionF(a, b, c, x0, x1, dx)
  results = []
  while x0 <= x1
  	xIter = x0
    result = 0
    if (a.truncate & (b.truncate | c.truncate)) == 0
    	xIter = x0.truncate
    end
    if a < 0 && c != 0
      result = a*xIter**2+b*xIter+c
    else
    if a > 0 && c == 0
      result = -a / (xIter - c)
    else
      result = a * (xIter + c)
    end
    end
    results.append(result)
    print xIter.round(5), ":\t\t", result.round(5), "\n"
    x0 += dx
  end
  puts "------------------"
  results
end

puts "Enter A"
a = gets.chomp.to_i
puts "Enter B"
b = gets.chomp.to_i
puts "Enter C"
c = gets.chomp.to_i
puts "Enter X0"
x0 = gets.chomp.to_i
puts "Enter X1"
x1 = gets.chomp.to_i
puts "Enter dX"
dx = gets.chomp.to_f

results1 = functionF(a, b, c, x0, x1, dx)

class MyTests < Test::Unit::TestCase
	def tests
    arr = functionF(1, 1, 1, 2, 1, 1).length
    assert_equal(arr, 0)
		arr = functionF(0, 0, 0, 0, 2, 0.1).length
    assert_equal(arr, 20)
    arr = functionF(1, -1, -1, 2, 0, 0.1).length
	  assert_equal(arr, 0)
  end
end
