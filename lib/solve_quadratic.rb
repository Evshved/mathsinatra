class QuadraticEquation < MainEquations
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
      output =  'x = '+(-@b/2/@a).to_s
    else
       if (@discriminant > 0)
        output = 'x1 = '+((-@b-Math.sqrt(@discriminant))/2/@a).to_s
        output = "#{output}" + ', x2 = '+((-@b+Math.sqrt(@discriminant))/2/@a).to_s
       else
        output = "no roots"
       end
    end
  end
end
