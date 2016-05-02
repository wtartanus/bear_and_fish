require( "pry-byebug" )
require_relative("fish.rb")

class River

 attr_accessor :list_of_fish


  def initialize( list_of_fish )
    @list_of_fish = list_of_fish
  end



  def missing_fish( index_begining, list)
    number = index_begining - list.length
    text = "#{number} fish is missing"
    return text
  end


  
 end


 

