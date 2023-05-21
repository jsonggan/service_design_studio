# Part 1

def sum(arr)
  total = 0
  arr.each do |num|
    total += num
  end
  total
end
  
def max_2_sum(arr)
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else 
    sorted_arr = arr.sort
    return sorted_arr[-1]+sorted_arr[-2]
  end
end
  
def sum_to_n?(arr, n)
  if arr.empty?
    return false
  end
  arr.combination(2).any? {|a,b| a + b == n}
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  consonant_pattern = /^[^aeiou]/i # [^aeiou] everything other than aeiou
  return false unless s =~ /^[a-z]/i  # Return false if the string doesn't start with a letter
  s =~ consonant_pattern  # return true if the first latter start with consonant
end

def binary_multiple_of_4?(s)
  binary_pattern = /^[01]+$/

  if s =~ binary_pattern
    input_num = s.to_i(2)
    return input_num %4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price # attr_accessor is a shortcut method when we need both attr_reader and attr_writer
  def initialize(isbn, price)
    raise ArgumentError, "ISBN string cannot be empty" if isbn.empty?
    raise ArgumentError, "Price must be a positive number" if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", price)
  end

=begin
  
  # This method seperates the logic for setter from constructor but much more longer

  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end

  attr_reader :isbn, :price

  def isbn=(value)
    raise ArgumentError, "ISBN string cannot be empty" if value.empty?
    @isbn = value
  end

  def price=(value)
    raise ArgumentError, "Price must be greater than zero" if value <= 0
    @price = value
  end

  def price_as_string
    format("$%.2f", price)
  end
=end
end