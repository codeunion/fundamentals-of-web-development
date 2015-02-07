# Using File.new
# returns an object that represents a file
#
# Take special note of the second argument, the "mode"
# => http://www.ruby-doc.org/core-2.2.0/IO.html#method-c-new-label-IO+Open+Mode
my_file = File.new("sample.txt", "w+")
puts my_file.read
my_file.write("new stuff")
puts my_file.read

# Using File.open
# with a block to manipulate the file
File.open("sample.txt", "r+") do |file|
  # puts file.read
  file.puts("hi there")
  # puts file.read
end

# Using convenience methods File.write and File.read
File.write("sample.txt", "bananas")
puts File.read("sample.txt")
