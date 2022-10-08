def prm(x0, x1, f, e)
  integral = 0.0
  n = ((x1.to_f - x0.to_f) / e.to_f).to_i
  for i in 0...n do
    integral += f.call(x0+e*i-e/2)*e
  end
  integral
end

def trm(x0, x1, f, e)
  integral = 0.0
  n = ((x1.to_f - x0.to_f) / e.to_f).to_i
  integral += (f.call(x0)/2 + f.call(x1)/2)*e
  for i in 1...n do
    integral += e*(f.call(x0+e*i))
  end
  integral
end

f1 = Proc.new{|x| Math.sqrt(Math.exp(x)-1)}
f2 = Proc.new{|x| Math.exp(x)*Math.sin(x)}

puts "function1(0,2; 2,1):"
puts prm(0.2, 2.1, f1, 0.001)
puts trm(0.2, 2.1, f1, 0.001)
puts "function2(0; pi/2):"
puts prm(0, Math::PI/2, f2, 0.001)
puts trm(0, Math::PI/2, f2, 0.001)