## Drills

```ruby
num = 5.9
puts num.floor

# STRING

name = "john"
puts name
puts name.reverse

puts name
puts name.class

puts "Hello" * 5

# This is equivalent to:
# puts "123" + "123" + "123"
puts "123" * 3

puts 3 * "123" # this should throw an error.

first_name = "john"
last_name = "smith"
first_name + last_name
puts first_name

first_name = "john"
last_name = "smith"
first_name << last_name
puts first_name

first_name = "john"
last_name = "smith"
complete_name = "#{first_name} #{last_name}" # note the use of #{variable}
puts complete_name
```

## Code Covered

### https://github.com/codeunion/sinatra-get/

### `http://localhost:9292/someendpoint`
### `http://localhost:9292/say_hello`
### `http://localhost:9292/tweet_count`

```ruby
require 'sinatra'
require 'json'

SECRET_VOLCANO_PASSWORD = "hotlava"

get '/' do
  "Hello World"
end

get '/say_hello' do
  "Hello World" * 1000
end

get '/say_hello/enough_already' do
  puts "this code will not be rendered in the browser, why?\n" * 100
  "I heard you 1,000 times!" * 100
end

get '/tweet_count' do
  tweet = "New Law Requires Welfare Recipients To Submit Sweat To Prove How Hard They’re Looking For Job"
  JSON.generate(item_counts(str_to_char(sanitize(tweet))))
end

get '/kevin' do
  "Hello"
end

get '/pyramid/:height' do
  p params
  if params[:papaya] == SECRET_VOLCANO_PASSWORD
    height = params[:height].to_i
    print_horizontal_pyramid(height)
  else
    "you did not provide the right secret"
  end
end

def print_horizontal_pyramid(height)
  counter = height / height
  pyramid_array = []
  until counter == height + 1
    pyramid_array.push("<h3>" +" " * ( height - counter ) + "*" * ( (counter)+(counter) ) + "</h3>" )
    counter += 1
  end
  p pyramid_array
end

def item_counts(items)
  counts = {}
  items.each do |item|
    if counts[item]
      counts[item] += 1
    else
      counts[item] = 1
    end
  end
  counts
end

def str_to_char(str)
  str.chars
end

def sanitize(str)
  str.downcase
end

tweet = "New Law Requires Welfare Recipients To Submit Sweat To Prove How Hard They’re Looking For Job"
```

[array-hash-lookup]:https://github.com/dwhite96/text-analysis/commit/fc80915f1ffb7282f181352db473e9e628630ecc#commitcomment-7249092
