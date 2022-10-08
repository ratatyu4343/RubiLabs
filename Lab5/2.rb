def calculateFunction(diapazon, n = -1)
  result = []
  if n != -1 && n < 10 && n > 58
    return
  end
  resultNumber = 0
  i = diapazon[0]
  while i <= diapazon[1]
      result.append(0)
      if n == -1
        j = 0
        begin
          resultItem = ((-1.0)**j)*(i**(2*j+1.0))/(2.0*j+1)
          result[resultNumber] += resultItem
          j += 1
        end while resultItem > 0.000001
      else
        for j in (0...n)
          resultItem = ((-1.0)**j)*(i**(2.0*j+1))/(2.0*j+1)
          result[resultNumber] += resultItem
        end
      end
      resultNumber += 1;
      i += 0.1
    end
    result
end

puts "Infinitive:\n",calculateFunction([0,1]), "\nIterations:\n", calculateFunction([0,1], 11)