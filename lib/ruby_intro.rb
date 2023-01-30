# frozen_string_literal: true

# Part 1

def sum(arr)
  arrsum = 0
  arr.each { |x| arrsum += x}
  return arrsum
end

def max_2_sum(arr)

  if arr.length() == 0
    return 0
  elsif arr.length() == 1
    return arr[0]
  end

  max = -10000000
  max2 = -10000000
  arr.each {|x| 
    if x > max
      max2 = max
      max = x
    elsif x > max2
      max2 = x
    end
  }
  return max + max2
end

def sum_to_n?(arr, number)
    dictionary = {}
    for i in 0...arr.length()
      dictionary[number - arr[i]] = i
    end

    for i in 0...arr.length()
      if (dictionary.key?(arr[i]) && dictionary[arr[i]] != i)
        return true
      end
    end

    return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end



def starts_with_consonant?(string)
  if (string.length() == 0)
    return false
  end

  start = string[0]
  start.upcase!
  if (start == 'A' || start == 'E' || start == 'I' || start == 'O' || start == 'U' || (!letter?(start)))
    return false
  end

  return true
end

def binary_multiple_of_4?(string)
  if ! validBinary?(string) 
    return false
  end
  
  if (string[-1] == '1')
    return false
  elsif (string.length() >= 2)
    return string[-2] != '1'
  else
    return true
  end
  
end

def letter?(lookAhead)
  lookAhead.match?(/[[:alpha:]]/)
end

def validBinary?(lookAhead)
  return lookAhead.length() >= 1 && ! lookAhead.match?(/[^10]/)
end

# Part 3

# Object representing a book
class BookInStock

  def initialize(isbn, price)

    raise ArgumentError.new(
      "Expected a positive value for price, got #{price}"
    ) if price <= 0

    raise ArgumentError.new(
      "Expected a non empty string for isbn, got #{isbn}"
    ) if isbn == ''

    @isbn = isbn
    @price = price
  end

  def price_as_string()
    return "$" + sprintf('%.2f', price)
  end

  attr_accessor :isbn
  attr_accessor :price

  

end

