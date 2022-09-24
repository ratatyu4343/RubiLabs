def functionY(x)
  case x
  when -4..0
    ((x-2.0).abs/((x**2.0)*Math.cos(x)))**(1.0/7.0)
  when 0..12
    (Math.tan(x+1.0/Math.exp(x))/(Math.sin(x)**2.0))**(2.0/7.0)
  else
    if x < -4 || x > 12
      1.0/(1.0+x/(1.0+(x/(1.0+x))))
    end
  end
end
print "Result: ", functionY(0.1)