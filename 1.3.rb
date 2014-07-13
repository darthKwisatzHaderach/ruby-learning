# encoding: utf-8
# 1.3 Даны два числа. Необходимо найти их среднее геометрическое.
# Напишем метод, который будет принимать любое количество аргументов
# и возвращать их среднее геометрическое
#
# Для проверки метода написаны unit-тесты.
# Они находятся в папке 'tests/test_1.3.rb'

def calculate(numbers)
  multiplication = numbers.reduce(:*)
  l = numbers.length
  geometric = multiplication**(1.0 / l)
  geometric
end

# puts "Enter the numbers, separeted by spaces."
# numbers = gets.chomp.split(" ")
# numbers.collect!{ |n| n.to_i }
# calculate(numbers)
