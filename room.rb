class Room

  attr_reader :name
  attr_accessor :capacity, :guests, :price, :playlist


  def initialize(name, capacity, price)
    @name = name
    @capacity = capacity
    @price = price
    @guests = []
    @playlist = []
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

  def add_song_to_playlist(song)
    @playlist << song
  end

# def favourite_song_playing(guest)
#   for song in @playlist
#   if song == guest.favourite_song
#     puts "Whoo!"
#   end
# end
# end


end #class end
