require("minitest/autorun")
require('minitest/rg')
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")


class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("Green Room", 10, 5)
    @room2 = Room.new("Red Room", 1, 7)
    @room3 = Room.new("Blue Room", 20, 6)
    @guest1 = Guest.new("Amy Harris", 100, "Like a prayer")
    @guest2 = Guest.new("Adam Hay", 55, "Promises")
    @guest3 = Guest.new("Lilly Elkan", 30, "Mamma Mia")
  end

  def test_room_has_name
    assert_equal("Green Room", @room1.name())
  end

  def test_room_price
    assert_equal(6, @room3.price)
  end

  # def test_check_playlist
  #   assert_equal("Oasis", @room3.playlist)
  # end

  def test_check_people_in_room
    assert_equal(0, @room1.guests.length)
  end

  def test_add_customer()
    @room1.add_customer(@guest2)
    assert_equal(1, @room1.guests.length)
  end

  def test_remove_customer()
    @room1.add_customer(@guest2)
    @room1.remove_customer(@guest2)
    assert_equal(0, @room1.guests.length)
  end

  def test_empty_the_room()
    @room2.add_customer(@guest1)
    @room2.add_customer(@guest2)
    @room2.add_customer(@guest3)
    @room2.empty()
    assert_equal(0, @room2.guests.length)
  end

def test_space_in_room
  @room2.add_customer(@guest1)
  @room2.add_customer(@guest2)
  assert_equal(1, @room2.guests.length)
end

def test_add_song_to_playlist()
  @room1.add_song_to_playlist(@song1)
  assert_equal(1, @room1.playlist.length)
end

# def test_favourite_song_playing
#   @playlist = [@song1, @song2]
#   result = @room1.favourite_song_playing(@guest1)
#   assert_equal("Whoo!", result)
# end


end #class end
