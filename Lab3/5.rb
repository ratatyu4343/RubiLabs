def yfunc(x, n, c)
  x = x.to_f
  res = (x**2-1)/(x**3-3*x+1.0/n)
  res += ((((x+c)**(-n/4.0))*(c**(1.0/n)))**(4.0/3.0))/(x**(2-n)*c**(-3.0/4.0))
  res
end

def zfunc(x)
  x = x.to_f
  Math.sin(15.0*3.1415/8-2*x)**2-Math.cos(17.0*3.1415/8-2*x)**2+Math.cos(x)**(1.0/x)
end
n = 10
c = 3
s1 = ""
(1..n).step((n-1.0)/(n+c)) { |i|
  s1 += "y(#{i})=#{yfunc(i,n,c)}\n"
}
s2 = ""
(3.141/n..3.141).step((3.141-3.141/n)/(3*n/2.0+c)) do |i|
  s2 += "z(#{i}=#{zfunc(i)})\n"
end
s3 = ""
(2..c).step(((c-2).abs)/(2.0*n)) do |i|
  s3 += (i > 2 && i < n) ? "f(#{i})=#{yfunc(i, n, c)}\n" : "f(#{i})=#{zfunc(i)}\n"
end
print s1, s2, s3

