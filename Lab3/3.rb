#2
def fun1
  res = 0
  for i in 0..8
    res += (1.0/3.0)**i
  end
  res
end

#4
def fun2(x)
  res = 0
  for i in 1..x
    z = 0
    for j in 1..i
      z += Math.sin(j)
    end
    res+=1.0/z
  end
  res
end

puts fun1
puts fun2(10)