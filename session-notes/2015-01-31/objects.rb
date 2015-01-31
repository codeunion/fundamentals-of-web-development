# name = "Tanner"
#
# p name.class
# p 3.class
# p 5.6.class
#
# p true.class
# p false.class
# p nil.class
#
# class String
#   def shout
#     "HI!"
#   end
# end
#
# p name.shout

fido = {
  name: "Fido",
  breed: "Retriever",
  age: 7
}

class Dog
  attr_reader :age
  attr_writer :hungry
  attr_accessor :name

  def initialize(name = "Bob", age)
    @name = name
    @age = age
    @hungry = false
  end

  # def age
  #   @age
  # end
  #
  # def hungry=(value)
  #   @hungry = value
  # end
  #
  # def name
  #   @name
  # end
  #
  # def name=(new_name)
  #   @name = new_name
  # end
end

fido = Dog.new("Fido", 8)
p fido.age
fido.hungry = false

p fido.name
fido.name = "Sue"
p fido.name

# fido.show_name

# fido.show_age

# sam = Dog.new("Sam")
# sam.show_name


# A non-object oriented way
# fido = {
#   name: "Fido",
#   hungry: false
# }
#
# def dog_eat(dog)
#   if dog.hungry
#     dog[:stomach] = "food"
#   else
#     puts "#{dog[:name]} is not hungry"
#   end
# end
