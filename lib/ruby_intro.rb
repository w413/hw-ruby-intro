# When done, submit this entire file to the autograder.

# Part 1

def sum arr
# call .sum on array arr and return value
    s = arr.sum
    return s
end

def max_2_sum arr
  array = arr.sort
  array.reverse!
  unless array.empty?
    return array.fetch(0) + array.fetch(1, 0)
  else
    return 0
  end

end

def sum_to_n? arr, n
 trail = arr.size
 trail-= 1
 lead = 0
  while trail > 0
    if trail == lead
      trail -= 1
      lead = 0
    elsif arr[lead] + arr[trail] == n
      return true
    else
      lead += 1
    end
  end
  return false
end
# Part 2

def hello name
# Concatinate "Hello, " + name + "!" and print
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
# Set c to the first char in string s
# Using regex: if c is in range b-d f-n p-t v-z return true
# Otherwise return false
  c = s[0]
  if /[b-df-np-tv-z]/i =~ c
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if /^[01]+$/.match(s)
    return !!/(00)$/.match(s) unless s == '0'; return true
  else
    return false
  end    
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    unless isbn.is_a? String
      raise ArgumentError.new("ISBN must be a string")
    end
    if isbn.empty?
      raise ArgumentError.new("ISBN cannot be empty")
    end
    unless price > 0
      raise ArgumentError.new("Price must be positive")
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    return @isbn
  end
  
  def price
    return @price
  end
  
  def isbn= (i)
    @isbn = i
  end
  
  def price= (p)
    @price = p
  end
  
  def price_as_string
    return "$%0.2f" % @price
  end
  
end