def randomArr(n)
  arr = []
  n.times do |i|
    arr.append(rand(30));
  end
  arr
end

def getArr(arrA, arrB)
  arr = []
  arrA.size.times do |i|
    arrB.size.times do |j|
      if arrA[i] == arrB[j]
        arr.append(arrA[i])
        arrB[j] = nil
      end
    end
  end
  arr
end

arrA = randomArr(10)
arrB = randomArr(10)

print "Array A: ",arrA,"\nArray B: ",arrB,"\nArrayA+B: ",getArr(arrA, arrB)
