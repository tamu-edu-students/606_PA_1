# frozen_string_literal: true

# Part 1

def sum(arr)
  arrsum = 0
  arr.each { |x| arrsum += x }
  arrsum
end

def max_2_sum(arr)
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  end

  max = -10_000_000
  max2 = -10_000_000
  arr.each do |x|
    if x > max
      max2 = max
      max = x
    elsif x > max2
      max2 = x
    end
  end
  max + max2
end

def sum_to_n?(arr, number)
  dictionary = {}
  (0...arr.length).each do |i|
    dictionary[number - arr[i]] = i
    return true if dictionary.key?(arr[i]) && dictionary[arr[i]] != i
  end

  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  return false if string.empty?

  start = string[0]
  start.upcase!
  vowels = %w[A E I O U]
  return false if vowels.include?(start) || !letter?(start)

  true
end

def binary_multiple_of_4?(string)
  return false unless valid_binary?(string)

  if string[-1] == '1'
    false
  elsif string.length >= 2
    string[-2] != '1'
  else
    true
  end
end

def letter?(look_ahead)
  look_ahead.match?(/[[:alpha:]]/)
end

def valid_binary?(look_ahead)
  look_ahead.length >= 1 && !look_ahead.match?(/[^10]/)
end

# Part 3

# Object representing a book
class BookInStock
  def initialize(isbn, price)
    raise ArgumentError, "Expected a positive value for price, got #{price}" if price <= 0

    raise ArgumentError, "Expected a non empty string for isbn, got #{isbn}" if isbn == ''

    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{format('%.2f', price)}"
  end

  attr_accessor :isbn, :price
end
