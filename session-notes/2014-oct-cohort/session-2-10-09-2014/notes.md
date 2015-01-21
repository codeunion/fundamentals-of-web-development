## Drills

```ruby
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
```


## Conceptual Topics

[concepts.rb](concepts.rb)

## Worked to V[0.1] of textazlyer

https://github.com/PeteVarley/text-analysis/tree/session-code

```ruby
  def item_counts(array)
    counts = {} # Initialize counts to an empty Hash
    array.each do |item|
      if counts[item]
        counts[item] += 1
      else
        counts[item] = 1
      end
    end
    counts # This returns the "counts" hash
  end

   sample_array = [ "abby", "abby", "pete", "pete" ]
   puts sample_array
   puts item_counts(sample_array)
```

### INPUTS

  An array of strings i.e. `[ "word", "another word", "word"]`

### OUTPUTS

  A hash of item count 'pairs' i.e. `{ "word" => 2, "another word" => 1}`

### MODEL

  Look at an array

  Count how often each element occurs in tabulate repeats

  Return a hash with the item count pairs

### PSEUDO CODE

  Outline the steps we need to take to get what we want

```ruby
# define a method that accepts and array as an argument

# create a container to keep track of count

# iterate through the array and if an element exists, increment its count and if it doesn't exist, add it to the count container and set the value to 1

# return our counts container
```
