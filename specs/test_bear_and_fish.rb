require("minitest/autorun")
require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")
# require_relative("../bear_and_fish.rb")



class BearAndFish < MiniTest::Test

  def setup
    food_1 = []
    food_2 = []
      @bear_1 = Bear.new('Wojtek', "Grizllie", food_1)
      @bear_2 = Bear.new('Yogi', "Brown", food_2)


      fish1 = Fish.new("Salmon")
      fish2 = Fish.new("Shark")
      fish3 = Fish.new("Haddock")

      # fish_array = [fish1, fish2, fish3]
      fish_array = [fish1]

      @fish = River.new(fish_array)
     
  end


  
 
 def test_bear_eaten
  bear1 = @bear_1.bear_eaten(@fish.list_of_fish)
  bear2 = @bear_2.bear_eaten(@fish.list_of_fish)
  assert_equal(['Salmon'], bear1)
  assert_equal("River is empty", bear2)
 end



 def test_missing_fish
  size_begining = @fish.list_of_fish.length
  bear1 = @bear_1.bear_eaten(@fish.list_of_fish)
  size = @fish.missing_fish(size_begining, @fish.list_of_fish)
  puts @fish_array.inspect
  assert_equal("1 fish is missing", size)
 end
end