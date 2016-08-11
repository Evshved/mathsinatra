class LinearEquation < MainEquations

  def initialize(k,b,y)
    @k = k
    @b = b
    @y = y
  end

  def solving
    @x = (@y - @b) / @k
    output = "x = #{@x}"
  end

end
