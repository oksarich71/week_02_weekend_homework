class Room

  attr_reader :name, :playlist
  attr_accessor :capacity, :guests, :price


  def initialize(name, capacity, price)
    @name = name
    @capacity = capacity
    @price = price
    @guests = []
    @playlist = playlist
  end


  def add_customer(guest)
    @guests << guest if space_in_room?
  end

  def remove_customer(guest)
    @guests.delete(guest)
  end

  def empty()
    @guests.clear
  end

  def space_in_room?
    if @guests.length < @capacity
      return true
    else
      return false
    end
  end


#   group = @group1.length
# if @group1.length <= 5
#   @group1 << "Green Room"
# elsif

end #class end
