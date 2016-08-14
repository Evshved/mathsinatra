class MainEquations

  def linear(k,b,y)
    @linear_output = LinearEquation.new(k,b,y)
    @linear_output.solving
  end

  def quadratic(a,b,c,y)
    @quadratic_output = QuadraticEquation.new(a,b,c,y)
    @quadratic_output.solving
  end

end

