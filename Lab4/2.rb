require 'matrix'
def makeMatrix(n)
  arr = []
  n.times do |i|
    arr.append([])
    n.times do |j|
      if i == j
        arr[i].append(1)
      else
        arr[i].append(rand(10))
      end
    end
  end
  arr
end

def getTMAtrix(matr)
  tMatr = [];
  matr[0].size.times do |i|
    tMatr.append([])
  end
  matr.size.times do |i|
    matr[0].size.times do |j|
      tMatr[j].append(matr[i][j])
    end
  end
  tMatr
end

m = makeMatrix(8)
8.times do|i|
  print m[i], "\n"
end
print "\n---------------\n"
tm = getTMAtrix(m)
8.times do|i|
  print tm[i], "\n"
end

