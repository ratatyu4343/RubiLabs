#part 1
A = false
B = true
C = true
X = 90
Y = -1
Z = 5

a = !(A&&B)||(A&&!B);
b = (Z!=Y)<=>(6>=Y)&&A||B&&C&&(X>=1.5)
c = (8-X*2<=Z)&&(X**2<=Y**2)||(Z>=15)
d = X>0&&Y<0||Z>=((X*Y+(-Y/X))-Z)
e = !(A||B&&!(C||(!A||B)))
f = X**2+Y**2>=1&&X>=0&&Y>=0
g = (A&&((C&&B<=>B||A).to_bool||C))&&B
print "1)",a," 2)",b," 3)",c," 4)"
print d," 5)",e," 6)",f," 7)", g

#part 2
x = 3
P = true
result = (Math.log(x)/Math.log(1/x)>Math.log(0.7)/Math.log(1/3))&&(Math.sqrt(x)>x*x)&&!P
print "\nPart 2: ", result

