class Point
  def initialize(_x, _y)
    @x = _x;
    @y = _y;
  end
  def x=(_x)
    @x = _x;
  end
  def y=(_y)
    @y = _y;
  end
  def x
    @x;
  end
  def y
    @y;
  end
end

class Figure
  def initialize(ar)
    @points = [];
    ar.each { |p| @points.append(Point.new(p[0], p[1]));}
  end

  def getS
    s = 0;
    (0...@points.length-1).each { |i|
      s += (@points[i].x + @points[i + 1].x) * (@points[i].y - @points[i + 1].y);
    }
    s += (@points[@points.length-1].x + @points[0].x) * (@points[@points.length-1].y - @points[0].y);
    s = s.abs;
    return s/2;
  end

  def self.parser(str)
    points_arr = []
    str = str.split(" ");
    str.each{|s| s.delete! "(" ")"};
    str.each{|s| s = s.split(",");points_arr.append([s[0].to_i, s[1].to_i])};
    return points_arr;
  end
end

points = "(69,43) (110,46) (147,50) (186,45) (238,37)
(298,34) (344,34) (396,57) (429,79) (482,149)
(485,215) (488,273) (443,314) (350,307) (271,299)
(207,275) (177,206) (136,168) (97,141) (47,95)
(49,71) (56,57)";

figure1 = Figure.new([[1, 1], [4, 2], [5, 3]])
puts figure1.getS;
figure2 = Figure.new(Figure.parser points)
puts figure2.getS;

