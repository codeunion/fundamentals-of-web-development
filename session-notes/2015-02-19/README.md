# Fundamentals of Web Development

**February 19, 2015**

Video: http://youtu.be/rpbf0WkQ1TU

Questions:

- What are procs
- Usage of instance variables, local variables, and symbols in Sinatra
- Schema design in SQL & data modeling in Ruby
- When to use helper functions in Sinatra
- How much / what kind of code is conventionally allowed in views

## Data Modeling / Schema Design

Cities
- name
- population
- elevation
- mayor

GasStations / PointsOfInterest
- name
- location (road)

Roads
- length
- speed limit

Route
- start (city)
- destination (city)
- roads [sequence of ordered (roads)]


```sql
cities
- id[key]
- name[string]
- population[int]
- elevation[int]
- mayor[string]

gas_stations
- id[int]
- name[string]
- road_id[foreign key]

roads
- id[int]
- length[int]
- speed_limit[int]

route_sequence
- id[key]
- order[int]
- route_id[foreign key -> routes]
- road_id[foreign key -> roads]

routes
- id[int]
- start_id[foreign key -> cities]
- destination_id[foreign key -> cities]
```

```ruby
class City
  attr_accessor :name, :population, :elevation, :mayor
end

class PointOfInterest
  # location is a Road instance
  attr_accessor :name, :location
end

class Road
  attr_accessor :length, :speed_limit
end

class Route
  # start and destination are instances of City
  # roads is an array of roads
  attr_accessor :start, :destination, :roads
end

boston = City.new(name: "Boston")
philly = City.new(name: "Philly")

i95 = Road.new(length: 55, speed_limit: 65)
i42 = Road.new(length: 45, speed_limit: 55)

boston_to_philly = Route.new
boston_to_philly.roads = [i42, i95]

boston_to_philly.directions => "go on i42 for 45 miles then i95 for 55 miles"
```

```ruby
# DataMapper implementation of the SQL schema

class City
  include DataMapper::Resource

  property :name, String
  property :population, Integer
  property :elevation, Integer
  property :mayor, String
end

class PointOfInterest
  include DataMapper::Resource

  property :name,
  property :location
end

class Road
  include DataMapper::Resource

  property :length,
  property :speed_limit

  has n, :route_sequences
  has n, :routes, through: :route_sequences
end

class RouteSequence
  property :order, Integer

  belongs_to :road
  belongs_to :route
end

class Route
  include DataMapper::Resource

  belongs_to :start, ['City']
  belongs_to :destination, ['City']

  has n, :route_sequences
  has n, :roads, through: :route_sequences
end
```
