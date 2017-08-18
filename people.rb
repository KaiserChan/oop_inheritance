# 1, 2 ,3, 4, 5 BELOW ----------
class Person

  @name

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def greetings
    "Hi, my name is #{name}"
  end

end



class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object!"
  end

end



class Student < Person

  def learn
    puts "I get it!"
  end
end

# 6 BELOW ----------
nadia = Instructor.new("Nadia")
puts nadia.greetings

# 7 BELOW ----------
chris = Student.new("Chris")
puts chris.greetings

# 8 BELOW ----------
puts nadia.teach # Everything in Ruby is an Object!
puts chris.learn # I get it!

puts chris.teach
# 1) This doesn't work because the teach method is only applicable to the class "Instructor"
# 2) "Chris" in this case is an instance variable for the class "students", hence cannot access
# a method from another class
# 3) For "Chris" to access the teach method, either we have to write the teach method inside
# class "Student" or we have to write it inside the Person class, which is the superclass of
# both Student and Instructor
