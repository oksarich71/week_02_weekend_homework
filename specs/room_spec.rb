require("minitest/autorun")
require('minitest/rg')
require_relative("../room.rb")
require_relative("../guest.rb")


class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("Green Room", 10)
    @room2 = Room.new("Red Room", 5)
    @room3 = Room.new("Blue Room", 20)
    @guest1 = Guest.new("Amy Harris", 100)
    @guest2 = Guest.new("Adam Hay", 55)
    @guest3 = Guest.new("Lilly Elkan", 30)

    # @group1 = [James, Ian, Andrew, Olly, Ben, Lilly, Una]
  end

  def test_room_has_name
    assert_equal("Green Room", @room1.name())
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



end #class end
