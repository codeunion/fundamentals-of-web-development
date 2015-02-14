# 1. Define our objects and object relationships (no DB)
# 2. Add some hard-coded dummy data
# 3. Replace dummy data with database and DataMapper

module Craigslist
  ALL_POSTINGS = []

  def self.all
    ALL_POSTINGS
  end

  # bikes = Craigslist.bikes(make: 'Santa Cruz', max_price: 400.00)
  def self.bikes(search_opts)
    make = search_opts[:make]
    max_price = search_opts[:max_price]

    results = self.all.select do |posting|
      posting.category == 'bikes' &&
        posting.make == make &&
        posting.price < max_price
    end

    return results
  end

  Craigslist.bikes({})

  class Posting
    attr_reader :category, :title, :price, :make

    def initialize(fields)
      @category = fields[:category]
      @title = fields[:title]
      @price = fields[:price]
      @make = fields[:make]
    end

    def save
      ALL_POSTINGS << self
    end
  end
end
