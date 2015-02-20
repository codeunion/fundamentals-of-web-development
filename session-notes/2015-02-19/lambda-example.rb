input_person = {
  id: '213',                 # => "213"
  name: 'buddy',             # => "buddy"
  birthday: 'June 30, 1982'  # => "June 30, 1982"
}                            # => {:id=>"213", :name=>"buddy", :birthday=>"June 30, 1982"}

require 'date'  # => true

class User
  attr_accessor :id, :name, :birthday  # => nil

  PARSER_FOR = {
    id: lambda { |id| id.to_i },                   # => #<Proc:0x007fbba98fb788@/Users/tanner/Clients/codeunion/fundamentals-of-web-development/session-notes/2015-02-19/lambda-example.rb:13 (lambda)>
    name: lambda { |name| name.capitalize },       # => #<Proc:0x007fbba98fb620@/Users/tanner/Clients/codeunion/fundamentals-of-web-development/session-notes/2015-02-19/lambda-example.rb:14 (lambda)>
    birthday: lambda { |date| Date.parse(date) },  # => #<Proc:0x007fbba98fb530@/Users/tanner/Clients/codeunion/fundamentals-of-web-development/session-notes/2015-02-19/lambda-example.rb:15 (lambda)>
  }                                                # => {:id=>#<Proc:0x007fbba98fb788@/Users/tanner/Clients/codeunion/fundamentals-of-web-development/session-notes/2015-02-19/lambda-example.rb:13 (lambda)>, :name=>#<Proc:0x007fbba98fb620@/Users/tanner/Clients/codeunion/fundamentals-of-web-development/session-notes/2015-02-19/lambda-example.rb:14 (lambda)>, :birthday=>#<Proc:0x007fbba98fb530@/Users/tanner/Clients/codeunion/fundamentals-of-web-development/session-notes/2015-02-19/lambda-example.rb:15 (lambda)>}

  def self.from_hash(input_hash)
    user = self.new               # => #<User:0x007fbba98fb030>

    input_hash.each do |property, value|  # => {:id=>"213", :name=>"buddy", :birthday=>"June 30, 1982"}
      PARSER_FOR[property].call(value)    # => 213, "Buddy", #<Date: 1982-06-30 ((2445151j,0s,0n),+0s,2299161j)>
    end                                   # => {:id=>"213", :name=>"buddy", :birthday=>"June 30, 1982"}

    user  # => #<User:0x007fbba98fb030>
  end
end

User.from_hash(input_person)  # => #<User:0x007fbba98fb030>
