# Гаврилюк Максим ІПС31 Варіант3

class Student
  attr_accessor :name
  attr_accessor :apartment
  attr_accessor :street
  attr_accessor :house
  def initialize(name, street, house, apartment)
    @name = name, @street = street,
    @house = house, @apartment = apartment
  end
  def Student.getStreetsStatistic()
    streets = Hash.new()
    ObjectSpace.each_object(Student).each do
      |student|
      if streets[student.street] == nil
        streets[student.street] = 0
      end
      streets[student.street] += 1
    end
    streets.each { |street, count| print street, " ", count, "\n"}
    return streets
  end
  def Student.getHouseStatistic(n)
    students = []
    ObjectSpace.each_object(Student).each do
    |student|
      if student.house == n
        students.append(student)
        puts "#{student.name[0]} #{student.apartment}"
      end
    end
    return students
  end
end

studentList = []
(0...100).each do |i|
  studentList.append(Student.new("Student"+i.to_s, "Street"+rand(5).to_s, rand(10), rand(50)))
end

Student.getStreetsStatistic()
puts "----------------------"
Student.getHouseStatistic(1)
