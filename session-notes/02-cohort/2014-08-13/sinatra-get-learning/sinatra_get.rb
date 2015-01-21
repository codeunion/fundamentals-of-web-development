require 'sinatra'
require 'pry'


def max list
  max_so_far = list.first.to_i
  list.each do |item|
    if item.to_i > max_so_far.to_i
      max_so_far = item
    end
  end
  max_so_far
end

get("/max") do
  # curious ? http://cl.ly/image/0a0y3k0w0p2x
  # '%20' is url speak for a space ' '
  if params[:list]
    list = params[:list].split(" ")
    max(list).to_s
  else
    "please include a proper list query parameter"
  end
end

def shortest_string(list)
  shortest_string_so_far = list[0]
  for str in list
    if str.length < shortest_string_so_far.length
      shortest_string_so_far = str
    end
  end
  shortest_string_so_far
end

get("/shortest_string/:list") do
  strings = []
  params[:list].split(" ").each do |item|
    strings << item
  end
  shortest_string(strings)
end

get("/max_input") do
  erb :forms
end

