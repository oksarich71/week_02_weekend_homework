require("minitest/autorun")
require('minitest/rg')
require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Like a prayer")
    @song2 = Song.new("I will survive!")
    @song3 = Song.new("Rain")
  end

  def test_song_has_name
    assert_equal("Like a prayer", @song1.name())
  end




end #class end
