# 1. Define our objects and object relationships (no DB)
# 2. Add some hard-coded dummy data
# 3. Replace dummy data with database and DataMapper

require 'data_mapper'

# Database schema
#
# TABLES:
# postings [title, price, description, category_id]
# categories [title, url_keystring, section_id]
# sections [title, url_keystring, city_id]
# cities [name, url_keystring, metro_area_id]
# metro_areas [name, subdomain]

DataMapper.setup(:default, 'sqlite:craigslist.db')

module Craigslist
  def self.bikes
    cat = Category.first(title: 'bikes')
    cat.postings
  end

  class Posting
    include DataMapper::Resource

    property :id, Serial
    property :title, String, required: true
    property :price, Float
    property :description, Text
    property :make, String

    belongs_to :category
  end

  class Category
    include DataMapper::Resource

    property :id, Serial
    property :title, String, required: true
    property :url_keystring, String, required: true

    has n, :postings
    # belongs_to :section
  end

  class Section
    include DataMapper::Resource

    property :id, Serial
    property :title, String, required: true
    property :url_keystring, String, required: true

    # has n, :categories
    belongs_to :city
  end

  class City
    include DataMapper::Resource

    property :id, Serial
    property :name, String, required: true
    property :url_keystring, String, required: true

    has n, :sections
    belongs_to :metro_area
  end

  class MetroArea
    include DataMapper::Resource

    property :id, Serial
    property :name, String, required: true
    property :subdomain, String, required: true

    has n, :cities
  end
end

DataMapper.finalize
DataMapper.auto_migrate!


























#
# module Craigslist
#   ALL_POSTINGS = []
#
#   def self.all
#     ALL_POSTINGS
#   end
#
#   # bikes = Craigslist.bikes(make: 'Santa Cruz', max_price: 400.00)
#   def self.bikes(search_opts)
#     make = search_opts[:make]
#     max_price = search_opts[:max_price]
#
#     results = self.all.select do |posting|
#       posting.category == 'bikes' &&
#         posting.make == make &&
#         posting.price < max_price
#     end
#
#     return results
#   end
#
#   class Posting
#     attr_reader :category, :title, :price, :make
#
#     def initialize(fields)
#       @category = fields[:category]
#       @title = fields[:title]
#       @price = fields[:price]
#       @make = fields[:make]
#     end
#
#     def save
#       ALL_POSTINGS << self
#     end
#   end
# end
