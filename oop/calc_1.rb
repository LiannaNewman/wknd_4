# Below, we have two types of calculators. The simple one can perform basic arithmetic,
# while the fancy one can also do square roots in addition to basic arithmetic.
# There is nothing wrong with the code below per se, but there is duplication
# between the two classes, since they each contain four identical methods.
# This is generally considered to be a code design flaw, since there may come
# a time where we decide to change how these methods work, and we may accidentally
# update the methods in one class, and forget to update them in the other, and our
# two classes become out of sync. This known as the DRY principle, that is:
# Don't Repeat Yourself.
# There are a number of techniques that we can use to fix this example. One is
# a fundamental concept in OOP known as Inheritance. Your exercise is to research
# Inheritance in Ruby, and use it to remove the duplication (or DRY up) the code
# below. You must also write the driver code to test your classes.

class SimpleCalculator
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

class FancyCalculator < SimpleCalculator
  def square_root(number)
    Math.sqrt(number)
  end
end


# Write your own driver code below:

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
