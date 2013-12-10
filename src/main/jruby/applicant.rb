require 'java'
require 'jruby/core_ext'

class Applicant < org.edubkendo.JApplicant
  attr_accessor :name, :age, :valid

  def initialize(name, age)
    @name = name
    # Proving we are using the Ruby class, not the Java parent
    @age = age - 1
    @valid = true
  end

  def getAge
    puts @age
    @age
  end

  def setAge(age)
    @age = age
  end

  def getName
    @name
  end

  def setName(name)
    @name = name
  end

  def isValid
    @valid
  end

  def setValid(valid)
    @valid = valid
  end

end

Applicant.become_java!
puts Applicant.java_class
