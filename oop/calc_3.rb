# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

module Calculator
  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

  def square_root(number)
    Math.sqrt(number)
  end
end

class SimpleCalculator
  include Calculator
end

class FancyCalculator
  include Calculator
end

class WhizBangCalculator
  include Calculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end

  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total, first_number) }
    total
  end
end

# Copy your driver code from the previous exercise and more below:
simple_calculator = SimpleCalculator.new
fancy_calculator = FancyCalculator.new
whiz_bang_calculator = WhizBangCalculator.new

puts "TESTING add function on SimpleCalculator..."
puts

puts "TESTING add function on FancyCalculator..."
puts

result1 = simple_calculator.add(2, 6)
result2 = fancy_calculator.add(2, 6)

puts "Your method returned:"
puts result1
puts result2
puts

if result1 == result2
  puts "PASS!"
else
  puts "F"
end

puts "----------------------------------"

puts "TESTING subtract function on SimpleCalculator..."
puts
puts "TESTING subtract function on FancyCalculator..."
puts

result3 = simple_calculator.subtract(6, 2)
result4 = fancy_calculator.subtract(6, 2)

puts "Your method returned:"
puts result3
puts result4
puts

if result3 == result4
  puts "PASS!"
else
  puts "F"
end

puts "----------------------------------"

puts "TESTING multiply function on SimpleCalculator..."
puts
puts "TESTING multiply function on FancyCalculator..."
puts

result5 = simple_calculator.multiply(3, 9)
result6 = fancy_calculator.multiply(3, 9)

puts "Your method returned:"
puts result5
puts result6
puts

if result5 == result6
  puts "PASS!"
else
  puts "F"
end

puts "----------------------------------"

puts "TESTING divide function on SimpleCalculator..."
puts
puts "TESTING divide function on FancyCalculator..."
puts

result7 = simple_calculator.divide(9, 3)
result8 = fancy_calculator.divide(9, 3)

puts "Your method returned:"
puts result7
puts result8
puts

if result7 == result8
  puts "PASS!"
else
  puts "F"
end

puts "----------------------------------"

puts "TESTING square root function on FancyCalculator..."
puts
puts "TESTING square root function on WhizBangCalculator..."
puts

result9 = fancy_calculator.square_root(144)
result10 = whiz_bang_calculator.square_root(144)


puts "Your method returned:"
puts result9
puts result10
puts

if result9 == result10
  puts "PASS!"
else
  puts "F"
end

puts "----------------------------------"

puts "TESTING hypotenuse function on WhizBangCalculator..."
puts

result = whiz_bang_calculator.hypotenuse(4, 16).round(2)

puts "Your method returned:"
puts result
puts

if result == 16.49
  puts "PASS!"
else
  puts "F"
end

puts "----------------------------------"

puts "TESTING exponent function on WhizBangCalculator..."
puts

result = whiz_bang_calculator.exponent(3, 2)

puts "Your method returned:"
puts result
puts

if result == 9
  puts "PASS!"
else
  puts "F"
end
