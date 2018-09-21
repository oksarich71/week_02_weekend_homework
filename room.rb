class Room

  attr_reader :name
  attr_accessor :capacity, :guests, :price


  def initialize(name, capacity, price)
    @name = name
    @capacity = capacity
    @price = price
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

  def space_in_room(guest)
    if @guests.length <= @capacity
      add_customer(guest)
    else
      return "Sorry, the room is full"
    end
  end


#   group = @group1.length
# if @group1.length <= 5
#   @group1 << "Green Room"
# elsif

end #class end
