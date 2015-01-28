number = 10
bind_one = binding()

number = 5
p eval("number * 10", bind_one)
# p eval("number * 10", bind_one)

[1,2,3].each do |mult|
  bind_two = binding()
  p eval("number * mult", bind_two)
end
