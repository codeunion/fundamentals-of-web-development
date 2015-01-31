# p "foo".class
#
# p String.superclass
# p String.superclass.superclass
# p String.superclass.superclass.superclass
#
# my_obj = Object.new
# other_obj = Object.new
#
# p my_obj.to_s
# puts "my_obj.object_id:"
# p my_obj.object_id
#
# puts "other_obj.object_id:"
# p other_obj.object_id
#
# p my_obj == other_obj
#
# f1 = "apple"
# f2 = "apple"
#
# p f1.object_id
# p f2.object_id
#
# p f1 == f2
#
# class NewString < String
#   def shout
#     upcase + "!"
#   end
# end
#
# message = NewString.new("hi there")
# puts message
# p message.shout
#
# msg2 = NewString.new("goodbye")
# p msg2.shout

# foo = Object.gets
# Object.puts foo

class Dog
  attr_accessor :name

  def speak
    "Hi there! My name is #{name}!"
  end

  def whoami
    puts self.class
  end

  def change_name
    name = "Tony"
  end
end

# Dog.new.whoami


module Driveable
  def go
    puts "goign!"
  end

  def stop
    puts "stopped"
  end
end

class Bike
  include Driveable
end

class MotorVehicle
  attr_reader :gas_tank

  def initialize
    @engine

    if self.class == MotorVehicle
      fail "MotorVehicle is an abstract class. Subclass before making instances."
    end
  end
end

class Car < MotorVehicle
  include Driveable

  attr_reader :driving

  def drive
    @driving = true
  end
end

class Snowmobile < MotorVehicle
  include Driveable
end

# MotorVehicle.new
tink = Car.new

tink.class
p tink.is_a? Car
p tink.is_a? MotorVehicle

tink.drive

p tink.instance_variables

p tink.respond_to?(:drive)
p tink.respond_to?(:gas_tank)

# p tink.methods

p tink.methods - Object.new.methods
