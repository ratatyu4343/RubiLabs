def makeMatrix(n)
  m = [];
  n.times do |i|
    m.append([])
    n.times do |j|
      if i == j
        m[i].append(2.to_r)
      else
        m[i].append(5.to_r)
      end
    end
  end
  m
end

def getResult(aA, bB)
  for i in (0...aA.size) do
    element = aA[i][i]
    for j in (i...aA.size)
      aA[i][j] /= element
    end
    bB[i] /= element
    for k in (0...aA.size)
      if k != i
        aAki = aA[k][i]
        for j in (i...aA.size)
          aA[k][j] -= aA[i][j]*aAki
        end
        bB[k] -= bB[i]*aAki
      end
    end
  end
  bB
end

n = 4
#begin
# print ">>>"
# n = gets.chomp.to_i
#end while n<3||n>9
m = makeMatrix(n)
b = []
n.times do |i|
  b.append(Rational(i+1))
end
getResult(m,b)
n.times do |i|
  print m[i],"[", b[i],"]\n"
end
n.times do |i|
  print "X",i," = ", b[i]," "
end

