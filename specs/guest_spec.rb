require("minitest/autorun")
require('minitest/rg')
require_relative("../guest.rb")
require_relative("../room.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Amy Harris", 100, "Like a prayer")
    @guest2 = Guest.new("Adam Hay", 55, "Promises")
    @guest3 = Guest.new("Lilly Elkan", 30, "Mamma Mia")
    @room1 = Room.new("Green Room", 10, 5)
  end

  def test_guest_has_name
    assert_equal("Lilly Elkan", @guest3.name)
  end

  def test_guest_has_money
    assert_equal(55, @guest2.money)
  end

  def test_remove_money
    @guest2.remove_money(@room1.price)
    assert_equal(50, @guest2.money)
  end

  def test_check_favourite_song
    assert_equal("Mamma Mia", @guest3.favourite_song)
  end


end #class end
