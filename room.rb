class Room

  attr_reader :name
  attr_accessor :capacity, :people


  def initialize(name, capacity, people = [])
    @name = name
    @capacity = capacity
    @people = []
  end

  def add_customer(customer, room)
    customer << room
  end


#   group = @group1.length
# if @group1.length <= 5
#   @group1 << "Green Room"
# elsif

end #class end
