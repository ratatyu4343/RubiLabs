def diapason(p, t, r)
  (p**r)*(1-1/p**t)
end

puts diapason(4, 32, 16)