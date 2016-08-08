# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

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
end

class SimpleCalculator
  include Calculator
end

class FancyCalculator
  include Calculator

  def square_root(number)
    Math.sqrt(number)
  end
end

# Copy your driver code from the previous exercise below:
simple_calculator = SimpleCalculator.new
fancy_calculator = FancyCalculator.new

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

result = fancy_calculator.square_root(144)

puts "Your method returned:"
puts result
puts

if result == 12
  puts "PASS!"
else
  puts "F"
end
