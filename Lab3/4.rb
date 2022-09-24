def factorial(x)
  return x*(x>1?factorial(x-1):1)
end

#E - pohibka
def ryad1(e)
  a = 0
  res = 0
  n = 2;
  begin
    a = (factorial(n-1)/factorial(n+1).to_f)**(n*(n+1))
    res += a
    n+=1
    end while a > e
  res
end

def ryad2(e)
  n=1
  a = 0
  res = 0
  begin
    a = 1/((4*n-1)*(4*n+1)).to_f
    res += a
    n += 1
  end while a > e
  res
end
e = 0.00001
print "Result1: ", ryad1(e), "\n"
print "Result2: ryad ",
        case ryad2(e)<=>1/2-3.1415/8
        when 1
          ">"
        when 0
          "="
        when -1
          "<"
        end + " 1/2-pi/8"
