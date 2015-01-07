### Solving Abstract Kata and Problems with Ruby

Like any other process you have ever participated, solving problems with ruby has steps, concepts and patterns that can all be learned.

![http://cl.ly/image/1k1B3s223w0B/Image%202014-07-31%20at%2010.30.58%20AM.png](http://cl.ly/image/1k1B3s223w0B/Image%202014-07-31%20at%2010.30.58%20AM.png)

Consider the [count in list kata][count in list kata].

Your job is to create a method that accepts two arguments 1. a list of anything and 2. an item to count.  

The goal of the method is to count the quantity of time that the argument to count appears in the list.  The output, or return value, should be an integer >= 0 (greater than or equal to zero).

We solve problems in ruby by implementing methods that we define.  Our ability to define a method ties into our understanding of the fundamental ruby building blocks, `String`, `Hash`, `Array`, `Boolean`, `Integer`, `Float` and `NilClass`.  As the programmer, it is our job to use any desired combination of variables, methods and data to create methods that return to us our desired outputs.

### Solving [count in list kata][count in list kata] using pen and paper transitioning into ruby code.

1. Write down the requirements of the method.
  - Think about the requirements of the method until you are clear on what has to be accomplished.
1. Diagram the structure of the initial method.
1. Write pseudo code to reflect on what has to be done.
  - In the case of [count in list][count in list kata], pseudo code could look like:
    1. Create a counter
    1. Iterate through the list
    1. If the element in the list is equal to the item to be counted, increment the counter
    1. Return the counter
1. Take your paper diagram and implement the equivalent ruby code.

#### Write down the requirements of the method.

```ruby
# write a method that accepts 2 arguments, argument1 is a list
# argument2 is something to be counted in the list
# the method should return the quantity of times that the item to be counted appears in the list.

```

![http://cl.ly/image/3o282w2P0j1C/Image%202014-07-31%20at%2011.10.34%20AM.png](http://cl.ly/image/3o282w2P0j1C/Image%202014-07-31%20at%2011.10.34%20AM.png)

#### Diagram the structure of the initial method.

```ruby
# write a method that accepts 2 arguments, argument1 is a list
# argument2 is something to be counted in the list
# the method should return the quantity of times that the item to be counted appears in the list.

def count_in_list(list, item_to_count)

end
```

![http://cl.ly/image/0e2j2D32140Y/Image%202014-07-31%20at%2011.10.59%20AM.png](http://cl.ly/image/0e2j2D32140Y/Image%202014-07-31%20at%2011.10.59%20AM.png)

#### Write pseudo code to reflect on what has to be done.

```ruby
# write a method that accepts 2 arguments, argument1 is a list
# argument2 is something to be counted in the list
# the method should return the quantity of times that the item to be counted appears in the list.

def count_in_list(list, item_to_count)
  # create a counter
  # iterate through the list
  # if the element in the list is equal to the counter, increment the counter
  # return the counter
end
```
![http://cl.ly/image/3S303u0y0r0K/Image%202014-07-31%20at%2011.11.33%20AM.png](http://cl.ly/image/3S303u0y0r0K/Image%202014-07-31%20at%2011.11.33%20AM.png)

#### Implement ruby code to reflect the pseudo-code.

```ruby
# write a method that accepts 2 arguments, argument1 is a list
# argument2 is something to be counted in the list
# the method should return the quantity of times that the item to be counted appears in the list.

def count_in_list(list, item_to_count)
  # create a counter
  counter = 0

  # iterate through the list
  # if the element in the list is equal to the counter, increment the counter
  # return the counter
end
```
#### Use your pseudo-code as a blue print and move forward sequentially.
```ruby
# write a method that accepts 2 arguments, argument1 is a list
# argument2 is something to be counted in the list
# the method should return the quantity of times that the item to be counted appears in the list.

def count_in_list(list, item_to_count)
  # create a counter
  counter = 0

  # iterate through the list
  list.each do |item|

  end

  # if the element in the list is equal to the counter, increment the counter
  # return the counter
end
```

```ruby
# write a method that accepts 2 arguments, argument1 is a list
# argument2 is something to be counted in the list
# the method should return the quantity of times that the item to be counted appears in the list.

def count_in_list(list, item_to_count)
  # create a counter
  counter = 0

  # iterate through the list
  list.each do |item|
    # if the element in the list is equal to the counter, increment the counter
    if item == item_to_count
      counter = counter + 1
    end
  end

  # return the counter
end
```

```ruby
# write a method that accepts 2 arguments, argument1 is a list
# argument2 is something to be counted in the list
# the method should return the quantity of times that the item to be counted appears in the list.

def count_in_list(list, item_to_count)
  # create a counter
  counter = 0

  # iterate through the list
  list.each do |item|
    # if the element in the list is equal to the counter, increment the counter
    if item == item_to_count
      counter = counter + 1
    end
  end

  # return the counter
  counter
end
```
#### [Click to watch a screencast on this!][count-in-list-vid]

[![count in list video](https://i.ytimg.com/vi/0j5lfyRyAjg/0.jpg)](http://youtu.be/0j5lfyRyAjg?vq=hd1080)

[count in list kata]:https://github.com/codeunion/web-fundamentals-weekly-katas/blob/master/week-01/count_in_list.rb
[count-in-list-vid]:http://youtu.be/zh8vRlub14Q
