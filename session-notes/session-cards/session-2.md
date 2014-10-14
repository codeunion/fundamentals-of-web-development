This session represents a decently sensitive moment for students.  For the most part, at this point in the workshop, students have mostly on boarded themselves and gotten their tools working.  It is a sensitive session because they are usually pretty exicted but mostly still very unclear how to attack complex(ish) problems, note that [text analysis][text analysis] is a decently complex project for a real beginner.

The overall structure of Session #2 needs to be focusing on;

-  Core skills and techniques required to attack the [Series-A Kata][series-a]


### patterns of concern

- What is the nature of what these snippets do?
- How are they useful?

```ruby
  counter = 0
  list.each do |element|
    if element == item_to_count
      counter += 1
    end
  end
  counter
  # what does changing the operator dor for us?
  # what is an operator?
```

```ruby
(1..5).each do |n|
  # what do we have access to here?
end
```

```ruby
require_relative './max'
require_relative './count_in_list'

list = [ 1 ,2, 3]

count_in_list(list, max(list))
```

```ruby
  string.split(" ").length
  # you can 'chain' things?
```


```ruby
  gets.chomp.to_i  # See below for what this does
```

```ruby
if __FILE__ == $0
end
```

### How to Model a problem?

```
# |   *   |
# |  ***  |
# | ***** |
# |*******|
```

```
# |*   |
# |**  |
# |*** |
# |****|
```

### How simple is simple?

> It is powerful if not mandatory to understand how to do things manually, but what about ?

```ruby
def sum(list)
  result = 0
  list.each do |n|
    result += n
  end
  result

  # what about....
  # list.reduce(:+)

end
```

### What are args and methods?

```ruby
def method(arg1, arg2 = nil)
  puts arg2
  if arg2
    puts arg2
  end
end
# what is method invocation?
```

### UNIX

http://www.tutorialspoint.com/unix/

```
ls
ls -al
mkdir
touch
cp
mv
cat
cd ./
cd ../
```






[text analysis]:https://github.com/codeunion/text-analysis
[series-a]:https://github.com/codeunion/web-fundamentals-weekly-katas/tree/master/series-A
