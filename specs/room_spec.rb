require("minitest/autorun")
require('minitest/rg')
require_relative("../room.rb")
require_relative("../guest.rb")


class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("Green Room", 10, 5, "Abba")
    @room2 = Room.new("Red Room", 1, 7, "Madonna")
    @room3 = Room.new("Blue Room", 20, 6, "Oasis")
    @guest1 = Guest.new("Amy Harris", 100)
    @guest2 = Guest.new("Adam Hay", 55)
    @guest3 = Guest.new("Lilly Elkan", 30)
  end

  def test_room_has_name
    assert_equal("Green Room", @room1.name())
  end

  def test_room_price
    assert_equal(6, @room3.price)
  end

  def test_check_playlist
    assert_equal("Oasis", @room3.playlist)
  end

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




end #class end
