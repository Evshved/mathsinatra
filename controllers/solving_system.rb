require './switch_of_equations'
require './solve_linear'
require './solve_quadratic'

# require 'MainEquations'
# require 'LinearEquation'
# require 'QuadraticEquation'

# Test linear
equation = MainEquations.new
equation.linear(1,2,3)
#Test quadratic D > 0
equation.quadratic(1,1,1,1)
# D = 0
equation.quadratic(100,1,2,0)
# D < 0
equation.quadratic(1,2,1,0)

# another tests
equation.quadratic(-100.2,2.2,1.11,0)
