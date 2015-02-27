# (0...50).map { ('a'..'z').to_a[rand(26)] }.join

# map and collect are synonyms (they are aliases)
# inject and reduce are synonyms (they are aliases)
# array = [2, 4, 6, 8]
# # puts array.inject { |x, y| x + y } # 2 + 4 + 6 + 8
# product = array.reduce do |x, y|
#   p [x, y]
#   x * y
# end # 2 * 4 * 6 * 8

# map, select, min, max, min_by, max_by
# any?, all?, #reject, none?, one?, zip

# words = ["hello", "bananas", "apples", "hello", "bananas"]
# words.map { |word| word.reverse }
# words.inject([]) { |results, word| results << word.reverse }
#
# numbers.all? { |num| num.even? }
# numbers.inject(true) { |results, num| results && num.even? }
#
# numbers.select { |num| num.even? }
# numbers.inject([]) do |results, num|
#   if num.even?
#     results << num
#   else
#     results
#   end
# end
#
# def frequency1(data)
#   results = Hash.new(0)
#
#   data.each do |item|
#     results[item] += 1
#   end
#
#   results
# end
#
# def frequency2(data)
#   data.inject(Hash.new(0)) do |results, item|
#     results.update(item => results[item] + 1)
#   end
# end
#
# data = ["hello", "bananas", "apples", "hello", "bananas"]
#
# # Bet 1: {"hello" => 3, "apples" => 1}
# # Bet 2: nil
# # Bet 3: {"bananas" => 1}
# p frequency2(data)

# def capitalize_word(word)
#   word.capitalize
# end
#
# paragraph = "Four score and seven years ago our fathers brought forth on this continent, a new nation, conceived in Liberty, and dedicated to the proposition that all men are created equal."
# puts paragraph
# puts "---"
#
# capitalized_paragraph = paragraph.split(" ").map do |word|
#   capitalize_word(word)
# end.join(" ")
#
# puts capitalized_paragraph
# map is used to apply a function to every element in a collection,
# resulting in a new list with that function applied to each element
# map(f, [a1, a2, a3, ..., aN]) = [f(a1), f(a2), ..., f(aN)]
#
# # User comes in, String goes out
# def first_name(user)
#   user.first_name
# end
#
# map(first_name, [user1, user2, ..., userN])
#   = [first_name(user1), first_name(user2), ..., first_name(userN)]
#   = [user1.first_name, user2.first_name, ..., userN.first_name]
#
#

def each_with_index(list, &block)
  i = 0

  while i < list.length
    block.call(list[i], i)
    i += 1
  end

  list
end

def each(list, &block)
  each_with_index(list) do |item, i|
    block.call(item)
  end
end

# reduce([5, 10, 15], 0) { |x, y| x + y } == 30
def reduce(list, memo, &block)
  each(list) do |item|
    memo = block.call(memo, item)
  end

  memo
end

# map([5, 10, 15]) { |n| n**2 } == [25, 100, 225]
def map(list, &block)
  reduce(list, []) do |memo, item|
    memo.push(block.call(item))
  end
end

# select([1,2,3,4,5]) { |n| n.even? } == [2, 4]
def select(list, &block)
  reduce(list, []) do |memo, item|
    block.call(item) ? memo.push(item) : memo
  end
end

# reject([1,2,3,4,5]) { |n| n.even? } == [1, 3, 5]
def reject(list, &block)
  select(list) do |item|
    !block.call(item)
  end
end

# index([45, 19, 23, 16, 31]) { |n| n.even? } == 3
def index(list, &block)
  reduce(list, [0, nil]) do |(i, memo), item|
    if memo
      [i + 1, memo]
    elsif block.call(item)
      [i + 1, i]
    else
      [i + 1, nil]
    end
  end.last
end

# any?([3, 5, 7]) { |n| n.even? } == false
# any?([2, 5, 7]) { |n| n.even? } == false
def any?(list, &block)
  reduce(list, false) do |memo, item|
    memo || block.call(item)
  end
end

# all?([3, 5, 7]).all? { |n| n.odd? } == true
# all?([2, 5, 7]).all? { |n| n.odd? } == false
def all?(list, &block)
  reduce(list, true) do |memo, item|
    memo && block.call(item)
  end
end

def none?(list, &block)
  !any?(list, &block)
end

# count(["a", "bb", "ccc"]) { |str| str.length > 1 } == 2
def count(list, &block)
  reduce(list, 0) do |memo, item|
    block.call(item) ? memo + 1 : memo
  end
end

def max(list)
  reduce(list, list.first) do |memo, item|
    item > memo ? item : memo
  end
end

# max_by(["a", "ccc", "bb"]) { |str| str.length } == "ccc"
def max_by(list, &block)
  reduce(list, list.first) do |memo, item|
    block.call(item) > block.call(memo) ? item : memo
  end
end

def min(list)
  reduce(list, list.first) do |memo, item|
    item < memo ? item : memo
  end
end

# min_by(["a", "ccc", "bb"]) { |str| str.length } == "a"
def min_by(list, &block)
  reduce(list, list.first) do |memo, item|
    block.call(item) < block.call(memo) ? item : memo
  end
end

# group_by(["a", "bb", "ccc", "ddd"]) { |str| str.length }
#   == {1 => ["a"], 2 => ["bb"], 3 => ["ccc", "ddd"]}
def group_by(list, &block)
  reduce(list, Hash.new { [] }) do |memo, item|
    key = block.call(item)
    memo.update(key => memo[key].push(item))
  end
end

# partition([1,2,3,4,5]) { |n| n.even? }
#   == [[2, 4], [1, 3, 5]]
def partition(list, &block)
  reduce(list, [[], []]) do |memo, item|
    if block.call(item)
      [memo[0].push(item), memo[1]]
    else
      [memo[0], memo[1].push(item)]
    end
  end
end
