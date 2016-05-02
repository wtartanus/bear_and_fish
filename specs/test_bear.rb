require("minitest/autorun")
require_relative("../bear.rb")

class TestBear < MiniTest::Test

  def setup
      @bear1 = Bear.new('Wojtek', "Grizllie", 0)
      @bear2 = Bear.new('Yogi', "Brown", 1)
  end

  def test_bear_name
   assert_equal('Wojtek',@bear1.name)
   assert_equal('Yogi',@bear2.name)
  end

  def test_bear_type
   assert_equal('Grizllie',@bear1.type)
   assert_equal('Brown',@bear2.type)
  end

  def test_bear_tummy
   assert_equal( 0,@bear1.tummy)
   assert_equal( 1,@bear2.tummy)
  end

  def test_set_bear_name
    @bear1.name ='John'
    @bear2.name ='Scot'
    assert_equal('John',@bear1.name)
    assert_equal('Scot',@bear2.name)
  end

  def test_set_bear_type
    @bear1.type = "Small"
    @bear2.type = "Grizllie"
    assert_equal("Small", @bear1.type)
    assert_equal("Grizllie", @bear2.type)
  end

  def test_set_bear_tummy
    @bear1.tummy += 1
    @bear2.tummy += 1
    assert_equal( 1 , @bear1.tummy)
    assert_equal( 2 , @bear2.tummy)
  end

  def test_bear_roar
    assert_equal( "I am a big scary Grizllie bear", @bear1.bear_roar)
    assert_equal( "I am a big scary Brown bear", @bear2.bear_roar)
  end


end