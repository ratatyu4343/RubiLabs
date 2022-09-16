def to10(number)
  n10 = 0;
  number = number.split(".");
  number[0] = number[0].reverse;
  g = 0;
  for i in (0..number[0].length) do
    n10 += number[0][i].to_i * 2**g;
    g += 1;
  end
  if number.length == 2
    g = -1;
    for i in (0..number[1].length) do
      n10 += number[1][i].to_i * 2**g;
      g -= 1;
    end
  end
  n10;
end

puts to10 "10000100101"