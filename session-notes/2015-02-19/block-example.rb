class User
  include DataMapper::Resource

  get_time = lambda { DateTime.now }

  self.created_at_config = GET_TIME
  
  @run_when_created = GET_TIME

  before :create do
    self.created_at = GET_TIME.call
  end

  def get_time
    DateTime.now
  end

  property :created_at, DateTime
end
