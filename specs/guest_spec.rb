require("minitest/autorun")
require('minitest/rg')
require_relative("../guest.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Amy Harris", 100)
    @guest2 = Guest.new("Adam Hay", 55)
    @guest3 = Guest.new("Lilly Elkan", 30)
  end

  def test_guest_has_name
    assert_equal("Lilly Elkan", @guest3.name())
  end

  def test_guest_has_money
    assert_equal(55, @guest2.money)
  end

end #class end
