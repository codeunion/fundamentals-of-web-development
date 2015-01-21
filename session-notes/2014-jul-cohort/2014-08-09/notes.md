# drills

```ruby
messed_up_name = "j*o*h*n"
puts messed_up_name.sub("*", "")
puts messed_up_name
puts messed_up_name.gsub("*", "")
puts messed_up_name
name = messed_up_name.gsub("*", "")
puts name

# empty?, length, [0..1], [-1]
# zero indexing
person = "john dewey"
puts person[0]

#how to find things ?
really_messed_up_name = "johnfubardewey"
really_messed_up_name.match("fubar")

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

# katzy, katzy, katzy...

```ruby
def fib(n)
  fib_ary = [0, 1]
  x = 2                         #  creating constant x because n is a variable

  if n < 2                      #  If we want the fibs for 0 or 1, return n
    n
  else
    2.upto(n + 1) do
      num = fib_ary[(x - 2)] + fib_ary[(x - 1)]  # To calculate fib 5 I have to
      fib_ary.push(num)                          # know fib 0 thru 4
      x += 1
    end
    fib_ary[n]
  end
end
```

