# Ruby Basics

This page has tons of fundamental ruby code on it.  You should be looking at the code and asking yourself a few questions;

1. Do you recognize the code?

1. Do you have a mental model of what the code would evaluate to if run?

1. Can you run the code either in irb or a script and get the output you expected?

If you answer `no` to any of the above, you should play with the code in irb until you answer `yes` to all three of the above.

CodeUnion kata and projects will require proficiency with all the ideas, behaviors and concepts on this page.  

**In order to gain that proficiency, you should type each line on this page into irb and look at the output and play with the code.  Email <stuck@codeunion.io> when you encounter troubles or need clarification.**

# Variables

A variable is a pointer to data.  In the below code, `name`, `person`, age, smoker and `places` are variables.  Variables can be manipulated in all variety of ways.  `=` is actually a method that assigns the value of a variable.

```ruby
name = "john"
person = "victor lightfoot"
age = 45
smoker = false
places = [ "Paris", "London", "San Francisco" ]
puts name
puts person
puts person.reverse
puts smoker
```

Variables can be reassigned, in fact, understanding when to reassign a variable will become an essential skill.

```ruby
name = "john"
puts name
person = "victor lightfoot"
puts person
person = name
puts person
```

### Combined Assignment Operators

Ruby gives us methods that both conduct an arithmetic action and assign the value of that action to a variable, common combined assignment operators are `+=`, `-=`, `*=`, `%=`, `/=`

```ruby
# Multiply the current value of num by 4 and store that new value back in num
number = 4
number = number + 4
puts number
number = 4
puts number
puts number += 10
puts number
```

# Numbers `Fixnum` and `Float`
FixNum is the ruby class that reprents a whole number like 1,2,10, 20, the opposite of a decimal.

http://www.ruby-doc.org/core-2.1.2/Fixnum.html

http://en.wikipedia.org/wiki/Integer_(computer_science)

Float is the ruby class that represents a decimal number like 1.5 or .6666, the output of a floating point operation.  

http://www.ruby-doc.org/core-2.1.2/Float.html

http://en.wikipedia.org/wiki/Floating_point


Ruby standard artihmetic operators are `+` , `-`, `/`, `*`, and `**`

```ruby
puts 3 + 7
puts 5 - 8
puts 20 * 10
puts 8 / 4
puts 10**1
puts 10**3

# What about this?
puts 10 / 3
```
Look at the difference that using a `Fixnum` or a `Float` has on code.

```ruby
puts 1
puts 1.class

puts 1.5
puts 1.5.class

puts ( 1 / 1.5 )
puts ( 1 / 1.5 ).class
```

In case you were wondering about division and remainders, ruby supports `%` also known as modulo.

```ruby
puts 21 / 4
puts 21 % 4 # % returns the remainder
puts 20 % 4
```

Some other useful methods that can be called on numbers are `abs`, `floor`, `ceil`, `to_f` and `to_i`.

```ruby
puts 10.to_f
puts -5.abs

# This calls "ceil" on 8.1
puts 8.1.ceil

num = 5.9
puts num.floor
```

### Floats v Integer

Always consider what kind of data you are working with...

![http://cl.ly/image/1P2P2N3u1f1v/Image%202014-08-01%20at%203.33.35%20PM.png](http://cl.ly/image/1P2P2N3u1f1v/Image%202014-08-01%20at%203.33.35%20PM.png)

# `String`

A String is any collection characters written between two `""` (double quotes) or `''` (single quotes).

### http://ruby-doc.org/core-2.1.1/String.html

```ruby
name = "john"
puts name
puts name.reverse
puts name
puts name.class
```

### `12 * "12"` is not equal to 144 !
In fact, `12 * "12"`, will result in a `TypeError` because ruby doesn't know how to multiply an Integer by a String

Computers interpret the information and inputs we give them very literally.  `5` and `"5"` are as different as `5` and `"bananas"`, developing awareness to this degree of detail is an essential programming skill.


```ruby
# This is equivalent to:
# puts "Hello" + "Hello" + "Hello" + "Hello" + "Hello"
puts "Hello" * 5

# This is equivalent to:
# puts "123" + "123" + "123"
puts "123" * 3

puts 3 * "123" # this should throw an error.
```

String concatenation occurs when we join two different strings.

```ruby

first_name = "john"
last_name = "smith"
first_name + last_name
puts first_name

first_name = "john"
last_name = "smith"
first_name << last_name
puts first_name
```

String interpolation allows strings to be inserted into other strings.  Interpolation can happen inside double quote strings `"john #{last_name}"` vice `'john #{last_name}'`

```ruby
first_name = "john"
last_name = "smith"
complete_name = "#{first} #{last}" # note the use of #{variable}
puts complete_name
```

How to remove ALL the '*' from messed_up_name ?

```ruby
messed_up_name = "j*o*h*n"
puts messed_up_name.sub("*", "")
puts messed_up_name
puts messed_up_name.gsub("*", "")
puts messed_up_name
name = messed_up_name.gsub("*", "")
puts name
```

Think of a string as a sequence of characters.  Each character can be made referenced to by the number of the position of the character, called the index position.  Ruby, like many programming languages, usually starts counting sequences with `0` so the first postiion of a String is always represented by the index position `0`

```ruby
# empty?, length, [0..1], [-1]
# zero indexing
person = "john dewey"
puts person[0]

#how to find things ?
really_messed_up_name = "johnfubardewey"
puts really_messed_up_name.match("fubar")

# split is useful for splitting all characters of a string into elements in an Array
person = "john dewey"
letters = person.split("")

letters.each do |letter|
  puts letter
end

puts letters.join("")
full_name = letters.join("")
puts full_name
```

Checkout tons of useful String methods at http://www.ruby-doc.org/core-2.1.2/String.html

# `Array`

http://www.ruby-doc.org/core-2.1.2/Array.html

An Array is a collection of elements contained inside brackets `[ ]` and separated a comma `,`.  Any data type or object or nested object can be contained in an Array.  An Array doesn't care what get puts inside.  An Array only cares about the sequential order of its contents.

```ruby
people = [ "john", "amy", "david", "michelle" ]
p people
```

In the above, `people` is an Array and each element inside the Array is a String.

In the below, numbers is an Array of integers.

```ruby
numbers = [ 1,2,3,4,5 ]
p numbers
```

An Array contain any other ruby data type including other Array or Hash elements.

```ruby
misc_stuff = [ [1,2,3,4], ["john", "amy", "michale", "nancy"], true, false, "person", nil ]
```

The contents of an Array can be accessed through many methods.  Arrays keep track of their contents by what is known as the index position.  Index positions start with `0`.

```ruby
people = [ "john", "amy", "david", "michelle" ]
p people[0]
```

`[n]` `[]` is the actual method and `n` is the index position of the element desired.  In the case of `people` above, the array has a legnth of 4 and the index position of `people[0]`, `people[1]`, `people[2]`, `people[3]`, notice that the index positions start with zero as ruby is a zero indexed language.  

```ruby
people = [ "john", "amy", "david", "michelle" ]
p people[0]
p people[1]
p people[2]
p people[-1]
p people[0..1]
p people.first
p people.last
p people.length
```


#### Manually traverse an array from left to right

```ruby
people = [ "john", "amy", "david", "michelle" ]
people.length.times do |n|
  p people[n]
end
```
#### Manually traverse an array from right to left

```ruby
people = [ "john", "amy", "david", "michelle" ]
people.length.times do |n|
  p people[-(n+1)]
end
```

# `Hash`

A Hash is a series of `:key => "value"` pairs contained in `{}`

```ruby
person = {:name => "michelle", :age => "30", :location => "San Francisco"}
```
`:name` is the key and `"michellle"` is the value the key points to.  Unlike Arrays, the Hash does not view itself in terms of 'index position' but rather a Hash either has or does not have a key.

```ruby
person = {:name => "michelle", :age => "30", :location => "San Francisco"}
p person[:name]
p person[:eye_color]
```

If the key exists, the Hash will return the value of the key.  If the key doesn't exist, the Hash will return `nil`.  

A hash cannot have multiples keys, an attempt to create mutliple keys will overwrite the value the already existing key points to.

```ruby
person = {:name => "michelle", :age => "30", :location => "San Francisco"}
p person[:name]
p person[:name] = "john"
p person[:name]
p person
```

A key value pair can be added to a Hash by setting the value of the key.

```ruby
person = {:name => "michelle", :age => "30", :location => "San Francisco"}
p person[:eye_color]
person[:eye_color] = "blue"
p person[:eye_color]
p person
```

Just like the Array, a Hash can accept complex objects and supports nesting, which can be quite useful.
```ruby
person = {:name => "michelle", :age => "30", :location => "San Francisco", :fav_colors => [ "blue", "red", "white"], :favorite_foods => [ "pbj", "krownuts", {:soda => ["pepsi", "coke"] } ] }
p person[:name]
p person[:fav_colors]
p person[:fav_colors].class
p person[:fav_colors].first
p person[:favorite_foods].last[:soda]
p person[:favorite_foods].last[:soda].first
```
A Hash can be iterated upon similar to an Array.

```ruby
person = {:name => "michelle", :age => "30", :location => "San Francisco"}
person.each do |key, value|
  puts key
  puts value
end
```

For more Hash methods http://www.ruby-doc.org/core-2.1.2/Hash.html


# Boolean

`true` and `false` Code can be used to setup comparisons and the output of the comparisons can be useful in conditional logic statements.

In addition to `true` and `false`, you must understand the idea of `truthy` and `falsey`, an [excellent discussion by Jesse Farmer][truthy-falsey].

Consider the output of the below ruby code by running it in a terminal:

```ruby
if true
  puts "this is true"
elsif true
  puts "this prints as also true"
else
  puts "this prints no matter"
end
```

```ruby
variable1 = true

if variable1
  puts "true will cause branching code to get run"
end
```
```ruby
variable2 = false

if variable2
  puts "false will not induce branching code to execute"
end
```
```ruby
puts 1 == 1

if 1 == 1
  puts "one is equal to one"
end
```
```ruby
puts 1 == 2

if 1 == 2
  puts "one is equal to two?"
end
```
```ruby
puts 1 != 2

if 1 != 2
  puts "one is not equal to two?"
end
```
```ruby
puts 1 > 10

if 1 > 10
  puts "is one greater than ten?"
end
```
```ruby
puts 1 < 10

if 1 < 10
  puts "one is less than 10"
end
```
```ruby
people = [ "sally", "john", "dave", "amy" ]

puts people.length > 5

if people.length > 5
  puts "there are more than five people?"
end
```
```ruby
puts "sally".length < "jd".length

if "sally".length < "jd".length
  puts "sally has less characters than jd?"
end
```

Boolean logic, like all ruby code, can be nested but don't get crazy as it gets hard to read quickly.

```ruby
if 1 < 10
  puts "1 is less than 10"
  if "1".length < "10".length
    puts "'1' has fewer characters than '10'"  
  end
end
```

# Nil

`nil` represents emptyness or undefinedness.  A tricky idea at first, think of nil as a placeholder for emptyness.  `nil` will become very useful when checking for the existence of objects, more on this in the future.

```ruby
puts [].nil?  
people = []
puts people.nil?

#[0] selects the first element of the array
people[0].nil?
```
```ruby
puts 1.nil?
puts "randomstring".nil?
puts "".nil?
puts nil.nil?
```

# Ruby Implicit Return

The concept of a return value presents itself with a little uncertainty.  But, given a good analogy, the idea becomes more clear.  Consider a fast-food restaurant like McDonalds or Wendy's.  Many of them have drive-thrus.  A customer arrives at the first window, orders food, waits a few minutes and then receives food usually in a box or a bag.  Let's say that the order is the input to a method, the fast-food restaurant is the method itself and the food delivered to the customer is the return value.  

In short a return value is what a method gives back to the caller of the method.  Methods accept arguments(inputs).  Once a method has received inputs, the method processes the inputs according to it's own internal programming and then when the method has finished, it 'returns' some pre-specified value to the caller of the method.  

Consider the below snippets.

```ruby
def min(list)
  min_so_far = list.first
  list.each do |item|
    if item < min_so_far
      min_so_far = item
    end
  end

  return min_so_far
end

puts min([1,2,3,4,5])
```

**Ruby automatically returns the last line of a method, therefore, `return min_so_far` should be written as `min_so_far` as is written below.**

```ruby
def min(list)
  min_so_far = list.first
  list.each do |item|
    if item < min_so_far
      min_so_far = item
    end
  end

  min_so_far #notice removal of the keyword return
end

puts min([1,2,3,4,5])
```

# Return Variable Assignment Anti-Pattern

**A common anti-pattern is to define a variable that points to code and then return the variable as is done below.**

```ruby
require_relative './sum'

def mean(list)
  total = sum(list)
  number_of_numbers = list.length
  average = total / number_of_numbers
  average
end
```

**Ruby will evaluate and return the code on the last line of the method so there is no need to define and return a specific variable.**

```ruby
require_relative './sum'

def mean(list)
  total = sum(list) # assume sum() required externally
  number_of_numbers = list.length
  total / number_of_numbers # no need to assign this line to a variable
end
```

### Iteration Using a Block

The word block gets thrown around ruby programming like the word wheel does at a car dealership.  A ruby block allows all types of useful iterative behaviors.  Understanding a Block presents some peculiarities for beginners.  Fear not.

A ruby block, commonly specified with `do end` represents an unknown quantity of ruby code to be processed a later specified time.

Consider pasting the below code into an IRB session:

```ruby
1.times do
  puts "hello"
end
```

![http://cl.ly/image/053d0I3l3u1m/Image%202014-07-30%20at%2012.39.22%20PM.png](http://cl.ly/image/053d0I3l3u1m/Image%202014-07-30%20at%2012.39.22%20PM.png)

Then consider:

```ruby
3.times do
  puts "hello"
end
```

![http://cl.ly/image/2B0R1o2f1p0J/Image%202014-07-30%20at%2012.06.39%20PM.png](http://cl.ly/image/2B0R1o2f1p0J/Image%202014-07-30%20at%2012.06.39%20PM.png)

Observe that `3.times` or really `Integer.times` is accepting a block, the code between `do` and `end` as an argument.  The contents of the block get executed 3 times, this behavior is dictated by the `3.times`, other methods will dictate different types of iterative behavior.  The above code prints 'hello' three times and then returns the value of the Integer that `.times` was called on.

Consider:

```ruby
5.times do |n|
  puts n
end
```

![http://cl.ly/image/2419162q1A0G/Image%202014-07-30%20at%2012.10.30%20PM.png](http://cl.ly/image/2419162q1A0G/Image%202014-07-30%20at%2012.10.30%20PM.png)

The above code introduces `|n|`, where a `|` is called a **pipe** and `n` is a programmer specified local variable that will be available inside the block each time the block gets executed.  In the case of `5.times do |n|`, `n` will represent the sequential values of 0 through 4 (0,1,2,3,4 is ruby speak for 5 times) as specified by the behavior of the `5.times` method call.

Consider:

```ruby
5.times do |number|
  puts number
end
```

`|number|` is a programmer defined local variable that can be accessed everytime the block is executed and points to the underlying data that the block has been linked to.  In the case of `5.times`, the `number` will point to 0,1,2,3,4 in sequence as the `5.times` method call runs it course.  The programmer can define the local variable as `|number|` as `|n|`, `|variable|`, `|value|` or `|however|` he/she wants.  Those same local variables are then accessible inside the block.  


![http://cl.ly/image/3G350i2E081v/Image%202014-07-30%20at%2012.21.01%20PM.png](http://cl.ly/image/3G350i2E081v/Image%202014-07-30%20at%2012.21.01%20PM.png)

# Traversing an Array

```ruby
words = [ "happy", "sad", "solemn", "serious", "rationally exuberant" ]

puts words.length

words.length.times do |n|
  puts n
  puts words[n]
end
```

The above code will execute the block (all the code between `do` and `end`) the amount of times that `words.length` evaluates to, in this case 5.  Each time the block gets evaluated, `n` represents an integer that can be used to access the index position of the `words` array.

![http://cl.ly/image/3l2O1k2V2w2r/Image%202014-07-30%20at%2012.25.52%20PM.png](http://cl.ly/image/3l2O1k2V2w2r/Image%202014-07-30%20at%2012.25.52%20PM.png)

`|n|` represents an integer that sequentially changes from 0 to 4.  

Consider the Array method `.each`

```ruby
words = [ "happy", "sad", "solemn", "serious", "rationally exuberant" ]

words.each do |n|
  puts n
end
```

`|n|` now represents the element contained in each position inside the `words` Array.  Ruby programmers like to name things that relate to the nature of the thing being named.  `|n|` doesn't really relate to the fact that `words` is an Array of feelings.  Some better naming might look like:

```ruby
words = [ "happy", "sad", "solemn", "serious", "rationally exuberant" ]

words.each do |element|
  puts element
end
```

or

```ruby
words = [ "happy", "sad", "solemn", "serious", "rationally exuberant" ]

words.each do |word|
  puts word
end
```

or

```ruby
words = [ "happy", "sad", "solemn", "serious", "rationally exuberant" ]

words.each do |feeling|
  puts feeling
end
```

![http://cl.ly/image/1J1Z1c3d3J1f/Image%202014-07-30%20at%2012.33.49%20PM.png](http://cl.ly/image/1J1Z1c3d3J1f/Image%202014-07-30%20at%2012.33.49%20PM.png)


[truthy-falsey]:https://gist.github.com/jfarmer/2647362
