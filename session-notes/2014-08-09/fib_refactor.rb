# def fib(3)
#   fib_ary = [0, 1]
#   x = 2
#   if 3 < 2
#     # p "n is less than 2 #{n}"
#     # n
#   else
#     2.upto(4) do
#       # cycle 1
#       num = 0 + 1
#       fib_ary.push(1)
#       # fib_ary == [0,1,1]
#       x += 1
#       # x == 3

#       #cycle 2
#       num = fib_ary[1] + fib_ary[2]
#       num = 1 + 1
#       num = 2
#       fib_ary.push(2)
#       # fib_ary == [0,1,1,2]
#       x += 1
#       # x == 4

#       #cycle 3
#       num = 1 + 2
#       fib_ary.push(3)
#       # fib_ary == [0,1,1,2,3]
#       x += 1
#       # x == 5
#     end
#     # n
#     fib_ary[3]
#     [0,1,1,2,3]
#     2
#   end
# end

# fib(3)

def fib(n)
  fib_ary = [0, 1]
  if n < 2
    n
  else
    2.upto(n + 1) do |number|
      num = fib_ary[(number - 2)] + fib_ary[(number - 1)]
      fib_ary.push(num)
    end
    fib_ary[n]
  end
end

sum([1,2])

# original method
# def fib(n)
#   fib_ary = [0, 1]
#   x = 2
#   if n < 2
#     n
#   else
#     2.upto(n + 1) do |number|
#       num = fib_ary[(x - 2)] + fib_ary[(x - 1)]
#       fib_ary.push(num)
#       x += 1
#     end
#     fib_ary[n]
#   end
# end

# problems
# using x to keep track of array position
# 100000 array.length = 100,000 [ , , , , , , , , , , , , , , , , , , , , , , , , ]

# used x to give us a placeholder, different than n, needed to be different than arugment n
# need to know what comes after the index position 0,1

