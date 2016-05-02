


class Bear

 attr_accessor :name, :type, :tummy

  def initialize(name, type, tummy )
    @name = name
    @type = type
    @tummy = tummy
  end

  def bear_roar
    text = "I am a big scary #{type} bear"
    return text
  end

  def bear_eaten(fish)
   if fish.length > 0
    fish_name = fish.pop()
    fish_name = fish_name.name
    @tummy << fish_name
    return @tummy
   else
    return "River is empty"
   end
  end



end