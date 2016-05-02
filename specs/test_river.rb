require("minitest/autorun")
require_relative("../river.rb")

class TestRiver < MiniTest::Test

  def test_river
    river1 = River.new( ['salmon', 'haddock'] )
    assert_equal(['salmon', 'haddock'], river1.list_of_fish)
  end

  def test_set_river
    river1 = River.new( ["salmon", "haddock"] )
    river1.list_of_fish = ['haddock', 'salmon']
    assert_equal(['haddock', 'salmon'], river1.list_of_fish)
  end


end