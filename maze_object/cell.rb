require 'byebug'

class Cell

  def initialize(top,right,bottom,left)
    @symbol = " "
    @walls = [top,right,bottom,left]
  end

  attr_accessor :symbol
  attr_accessor :walls

end
