# parent class
class Person

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    "Hi, my name is #{name}."
  end

end



# child class
class Student < Person

  def learn
    "I get it!"
  end

end



# child class
class Instructor < Person

  def teach
    "Everything in Ruby is an Object"
  end

end


chris = Instructor.new("chris")
puts chris.greeting

cristina = Student.new("cristina")
puts cristina.greeting

puts
puts chris.teach
puts cristina.learn

# puts cristina.teach
# undefined method TEACH for student cristina (NoMethodError)
# as cristina is a student she can not teach, she only can learn 
