def myfunc(a, b, x)
  result = 6.2*10**2.7*Math.tan(Math::PI - x**3)
  result /= Math::E + (Math.log(Math.acos((b**3).abs), Math::E))**0.5
  result += Math.atan(10**2*Math.sqrt(a)/(2*x+87.2))
  return result
end

while true
  print "Input a: "
  a = gets.chomp.to_f
  print "Input b: "
  b = gets.chomp.to_f
  print "Input x: "
  x = gets.chomp.to_f
  begin
    res = myfunc(a, b, x)
  rescue
    puts "Something wrong. Try again!"
  else
    puts "Result of function is: #{res}"
    break
  end
end
