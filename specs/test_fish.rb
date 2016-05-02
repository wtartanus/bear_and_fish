require("minitest/autorun")
require_relative("../fish.rb")

class TestFish < MiniTest::Test

  def setup
      @fish1 = Fish.new("Salmon")
      @fish2 = Fish.new("Haddock")
      
  end

  def test_bear_name
   assert_equal('Salmon',@fish1.name)
   assert_equal('Haddock',@fish2.name)
  end

  def test_set_fish_name
    @fish1.name ='John'
    @fish2.name ='Scot'
    assert_equal('John',@fish1.name)
    assert_equal('Scot',@fish2.name)
  end

end
