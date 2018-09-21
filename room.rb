class Room

  attr_reader :name
  attr_accessor :capacity, :guests


  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @guests = []
  end


  def add_customer(guest)
    @guests << guest
  end

  def remove_customer(guest)
    @guests.delete(guest)
  end

  def empty()
    @guests.clear
  end


#   group = @group1.length
# if @group1.length <= 5
#   @group1 << "Green Room"
# elsif

end #class end
