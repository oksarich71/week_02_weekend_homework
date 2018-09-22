require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")
require_relative("../karaoke_bar.rb")

class KaraokeTest < MiniTest::Test

  def setup()

    @room1 = Room.new("Green Room", 10, 5)
    @room2 = Room.new("Red Room", 5, 7)
    @room3 = Room.new("Blue Room", 20, 6)
    @guest1 = Guest.new("Amy Harris", 100)
    @guest2 = Guest.new("Adam Hay", 55)
    @guest3 = Guest.new("Lilly Elkan", 30)

  @karaoke = Karaoke.new("SingAlong", [@guest1, @guest2, @guest3])
  end

  def test_karaoke_has_name()
       assert_equal("SingAlong", @karaoke.name)
  end

  def test_karaoke_has_till
      assert_equal(200, @karaoke.till())
  end

  def test_sell_ticket()
    @karaoke.sell_ticket(@room3.price)
    assert_equal(206, @karaoke.till)
  end

  def test_guest_buys_ticket_karaoke_takes_money
       @karaoke.sell_ticket(@room1.price)
       @guest1.remove_money(@room1.price)
       assert_equal(205, @karaoke.till)
       assert_equal(95, @guest1.money)
     end







end #class end
