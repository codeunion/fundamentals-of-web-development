def longest_string(list)
  longest = list.first

  list.each do |str|
    longest = str if str.length > longest.length
  end

  longest
end

if __FILE__ == $0
  input = ["a", "zzzz", "c"]
  expected = 'zzzz'

  p longest_string(input) == expected
end
