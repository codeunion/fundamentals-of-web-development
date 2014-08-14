### Summary

Session 1 completed the bulk of the drills and spent the bulk of its time working from a basic counter that can't keep track of anything between web requests to a sqlite db that had a ClickCounter object.

Session 2 didn't cover drills, spent a good amount of time working through confusions around how to create client side html forms that would submit to an endpoint and began the discussion around persistence.  Session 2 covered the basic counter but did not get to a funcioning db.

### drills

```ruby
person = {:name => "michelle", :age => "30", :location => "San Francisco"}
person = {:name => "michelle", :age => "30", :location => "San Francisco"}
p person[:name]
p person[:eye_color]
person = {:name => "michelle", :age => "30", :location => "San Francisco"}
p person[:name]
p person[:name] = "john"
p person[:name]
p person
person = {:name => "michelle", :age => "30", :location => "San Francisco"}
p person[:eye_color]
person[:eye_color] = "blue"
p person[:eye_color]
p person
person = {:name => "michelle", :age => "30", :location => "San Francisco", :fav_colors => [ "blue", "red", "white"], :favorite_foods => [ "pbj", "krownuts", {:soda => ["pepsi", "coke"] } ] }
p person[:name]
p person[:fav_colors]
p person[:fav_colors].class
p person[:fav_colors].first
p person[:favorite_foods].last[:soda]
p person[:favorite_foods].last[:soda].first
person = {:name => "michelle", :age => "30", :location => "San Francisco"}
person.each do |key, value|
  puts key
  puts value
end

# http://www.ruby-doc.org/core-2.1.2/Hash.html
```
