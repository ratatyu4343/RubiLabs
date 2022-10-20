require "test/unit"

class Patient
	attr_accessor :id
	attr_accessor :fname
	attr_accessor :sname
	attr_accessor :fathername
	attr_accessor :adress
	attr_accessor :telephone
	attr_accessor :number
	attr_accessor :diagnos
	public
	def initialize(fn, sn, nf, a, t, d, id = nil, n = nil)
		if id == nil || n == nil
			id = ObjectSpace.each_object(Patient).count()
			n  = ObjectSpace.each_object(Patient).count()+1
		end
		@id = id
    @fname = fn
   	@sname = sn
		@fathername = nf
    @adress = a
    @telephone = t
		@number = n
    @diagnos = d
	end
	def toString()
		str = fname+" "+sname+" "+fathername+" "+adress+" +"+telephone.to_s+" "+number.to_s+" "+diagnos
		str
	end
end

class Hospital
	@patients
	public
	def initialize(count = 10)
		@patients = Array.new
		count.times {
			|i|
			ni = i
			i = i.to_s
			@patients.push(Patient.new("Name"+i, "Sname"+i, "FName"+i, "Adres"+i, (ni%15)+111, "Diagnos"+(ni%3).to_s))
		}
	end
	def getPatients()
		@patients
	end
	def getPatientsByDiagnos(diagnos)
		subPatients = []
		@patients.each {|p|
			if p.diagnos == diagnos
				subPatients.push(p)
			end
		}
		subPatients
	end
	def getPatientsByCardInterval(x1, x2)
		subPatients = []
		@patients.each {|p|
			if p.number >= x1 && p.number <= x2
				subPatients.push(p)
			end
		}
		subPatients
	end
end

hosp = Hospital.new(20);
hosp.getPatientsByDiagnos("Diagnos1").each {|p|
    puts p.toString()
}
puts "-------------------------------"
hosp.getPatientsByCardInterval(10, 17).each {|p|
    puts p.toString()
}


class MyTests < Test::Unit::TestCase
	def tests
    hosp = Hospital.new(20);
    assert_equal(hosp.getPatients().length, 20)
    diag =  hosp.getPatientsByDiagnos("Diagnos1")
		assert_equal(diag.length>0, true)
	  assert_equal(hosp.getPatientsByDiagnos("Diag4").length, 0)
  end
end
