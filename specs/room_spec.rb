require("minitest/autorun")
require('minitest/rg')
require_relative("../room.rb")

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("Green Room", 10)
    @room2 = Room.new("Red Room", 5)
    @room3 = Room.new("Blue Room", 20)
  end

  def test_room_has_name
    assert_equal("Green Room", @room1.name())
  end

end #class end
