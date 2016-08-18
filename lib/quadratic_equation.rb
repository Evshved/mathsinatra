class QuadraticEquation < Equation
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def roots
    return 'Answer: no roots' if discriminant < 0
    if discriminant == 0
    @answer = [-@b / (2 * @a)]
    return "Answer: #{@answer}"
    end
    @sqrt = Math.sqrt(discriminant)
    @answer = [-@b + @sqrt, -@b - @sqrt].map { |item| item / (2 * @a) }
    "Answer: #{@answer}"
  end

  private

  def discriminant
    @discriminant ||= @b**2 - 4 * @a * @c
  end
end
