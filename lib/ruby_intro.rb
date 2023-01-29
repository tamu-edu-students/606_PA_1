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

end



def starts_with_consonant?(string)

end

def binary_multiple_of_4?(string)
  
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end

def letter?(lookAhead)
  lookAhead.match?(/[[:alpha:]]/)
end

def validBinary?(lookAhead)
  return lookAhead.length() >= 1 && ! lookAhead.match?(/[^10]/)
end