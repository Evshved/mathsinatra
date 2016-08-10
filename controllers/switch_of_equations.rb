class MainEquations
  # def initilize(type)
  #   @type_of_equation = type
  # end

  # def switcher
  #   if @type_of_equation == 1
  #     linear
  #   else
  #     quadratic
  #   end
  # end

  def linear(k,b,y)
    @linear_output = LinearEquation.new(k,b,y)
    @linear_output.solving
  end

  def quadratic(a,b,c,y)
    @quadratic_output = QuadraticEquation.new(a,b,c,y)
    @quadratic_output.solving
  end

end

