require 'erb'

name = "Tigger"
template = "Hi my name is <%= name %>"
p template

erb_temp = ERB.new(template)

p erb_temp.result(binding)
