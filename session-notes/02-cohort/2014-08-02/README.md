# Topic of the Day:

### Make Ruby Do Useful stuff with basic data types

- Run drills on String, Hash, Array, booleans, Integer/Fixnum, branching, array traversal.
- Run through how to approach a problem, how to think and structure the beginnings of a solution.
- Implement v.1-.5 https://github.com/codeunion/text-analysis/wiki.

# Class Notes

##  Opened with round robin drills

```ruby

# Variables

name = "john"
person = "victor lightfoot"
age = 45
smoker = false
places = [ "Paris", "London", "San Francisco" ]
puts name
puts person
puts person.reverse
puts smoker

# variable reassingment

name = "john"
puts name
person = "victor lightfoot"
puts person
person = name
puts person

# combined assignment

number = 4
number = number + 4
puts number
number = 4
puts number
puts number += 10
puts number


# fixnum vs float

puts 3 + 7
puts 5 - 8
puts 20 * 10
puts 8 / 4
puts 10**1
puts 10**3
puts 10 / 3
puts 1
puts 1.class

puts 1.5
puts 1.5.class

puts ( 1 / 1.5 )
puts ( 1 / 1.5 ).class
puts 21 / 4
puts 21 % 4 # % returns the remainder
puts 20 % 4
puts 10.to_f
puts -5.abs

# This calls "ceil" on 8.1
puts 8.1.ceil

```
## Demonstrate how to attack a problem by completing a student kata.

  - Articulate the required output
  - Articulate the known inputs
  - Create pseudo code

```ruby
# Method name: count_max
# Inputs:      A list of numbers
# Returns:     The number of times the largest number in the list
#              appears in the list
# Prints:      Nothing

# understanding the requirements of the output
# understanding the inputs are
# establish a pattern or some kind of model for what needs to happen

# what do we literally want to return a 9, 2, 10 return an Integer that represents the
# input is an Array of numbers

def count_max(list)
  # set variables, what variables to set?
  # go through the list and find the occurences of the highest number

  # 1 find the highest number
  max = list.max
  counter = 0
  # 2 iterate throught the list
  list.each do |item|
    if item == max
      counter += 1
      # 3 count, mark or indicate the occurence of the highest number
    end
  end
  # 4 return the occurence of the highest
  counter
end

p count_max([1,2,3,4,4])



# input [1,2,3,4]
```

## Applied knowledge of how to attack a problem on v[0.1] of [text analysis project.][text-analysis]

### Excellent gist on the idea of [truthy and falsy][truthy].
```ruby
# articulate the required output
# articulate the known inputs
# create pseudo code

# required output is a hash with the letter that is repeated and how many times it was repeated
# for exam>ple {'a' => 20}

# articulate the input

# for example ["a","b","c"]
# items_to_count
# words_to_count
# string_to_counts
# things_to_count
# things
# items
def item_counts(items)
# create an empty array to identify each unique item in array;  key to count
    counts = {}

# iterate through the array
    items.each do |item|
        if counts[item]
            counts[item] += 1
        else
            counts[item] = 1
        end

    end
    counts
# identify unique values;  store in hash
# add +1 to value
# return key/value pairs

end

p item_counts(["john", "stewart"])
```

1. Debug student kata.

> Why is there a bug in my code?

```ruby
def shortest_string(list)
  shortest_string_so_far = list[0]
  for str in list
  str.length
    if str < shortest_string_so_far
      shortest_string_so_far = str
    end
  end

  return shortest_string_so_far
end
```

What do you want to compare? What are you actually comparing?

### `if str < shortest_string_so_far`

### `if str.length < shortest_string_so_far.length`

The two snippets above compare different details.

### Always pay attention to and consider what code actually evaluates to.

[text-analysis]:https://github.com/codeunion/text-analysis/wiki/Iterations#v01-basic-count-statistics
[truthy]:https://gist.github.com/jfarmer/2647362
