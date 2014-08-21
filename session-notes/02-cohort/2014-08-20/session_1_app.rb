require 'sinatra'

def show_params
  puts "\n"
  p params
  puts "\n"
end

# create an endpoint that renders html with a form
# make the form submit to '/max'
get("/") do
    erb :form
end

get("/max") do
  show_params
  list = params[:list].split.map {|element| element.to_i }
  max(list).to_s
end

def max(list)
  max_so_far = list.first
  list.each do |item|
    if item > max_so_far
      max_so_far = item
    end
  end
  max_so_far
end

def count_in_list(list, item_to_count)
  count_so_far = 0
  list.each do |item|
    if item_to_count == item
      count_so_far = count_so_far + 1
    end
  end
  count_so_far
end

def count_max(list)
  max_number = max(list)
  count_in_list(list, max_number)
end
