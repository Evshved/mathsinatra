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
     LinearEquation.new(k,b,y)
  end

  def quadratic(a,b,c,y)
    QuadraticEquation.new(a,b,c,y)
  end

end

class LinearEquation << MainEquations

  def initialize(k,b)
    @k = k
    @b = b
    @y = y
  end

  def solving
    @x = (@y - @b) / @k
    p @x
  end


end

class QuadraticEquation << MainEquations
  def initialize(a,b,c,y)
    @a = a
    @b = b
    @c = c
    @y = y
  end

  def solving
    @c = @c - @y
    @discriminant = @b*@b - 4*@a*@c
    if (@discriminant == 0)
       puts 'x = '+(-@b/2/@a).to_s
    else
       if (D > 0)
        puts 'x1 = '+((-@b-Math.sqrt(@discriminant))/2/@a).to_s
        puts 'x2 = '+((-@b+Math.sqrt(@discriminant))/2/@a).to_s
       else
        puts "no roots"
       end
    end
  end
end


