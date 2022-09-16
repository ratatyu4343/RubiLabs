def to2(number)
  n2 = "";
  while number != 0 do
    n2 += number%2 == 0 ? "0" : "1";
    number /= 2;
  end
  n2.reverse();
end

puts to2(451);
