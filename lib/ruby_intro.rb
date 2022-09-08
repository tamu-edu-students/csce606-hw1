# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  if arr.length() == 0
    return 0
  end

  sum = 0

  for digit in arr
    sum += digit
  end

  return sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.length() == 0
    return 0
  elsif arr.length() == 1
    return arr[0]
  end

  arr.sort

  return arr[-1] + arr[-2]
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  if arr.length() <= 1
    return false
  end

  number_map = []

  for digit in arr
    if (digit - number).abs.in?(number_map)
        return true
    end

    number_map.append(digit)
  end
   return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name.to_s
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string.length == 0
    return false
  end

  non_consonant = ["A","E", "I", "O", "U"]

  string = string.capitalize

  if non_consonant.include? string[0]
    return false
  elsif string[0] =~ /[[:alpha:]]/
    return true
  else
    return false
  end
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if string.length == 0
    return false
  end

  string.split("").each do |digit|
    if digit != "0" and digit != "1"
        return false
    end
  end

  if string.to_i(2) % 4 == 0
    return true
  end
  return false
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.length == 0 || price <= 0
        raise ArgumentError
    end

    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(new_isbn)
    @isbn = new_isbn
  end

  def price=(new_price)
    @price = new_price
  end

  def price_as_string
    return "$#{'%.2f' %  @price}"
  end
end
