require 'equation'

class LinearEquation < Equation
  def initialize(k, b)
    @k = k
    @b = b
  end

  def call
    -@b / @k
  end

end
