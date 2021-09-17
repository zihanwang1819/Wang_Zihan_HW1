# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  for a in arr do
    sum = sum + a
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  len = arr.length
  result = 0
  if len == 0
    result = 0;
  elsif len == 1
    result = arr[0]
  else
    newarr = arr.sort!{|x,y| y <=> x}
    result = newarr[0] + newarr[1]
  end  
  return result  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  sum = 0
  len = arr.length - 1
  if len == 0 or len == -1
    return false
  end
  i = 0
  while i <= len
    j = i + 1
    while j <= len
      sum = arr[i] + arr[j]
      if sum == n
        return true
      end
      j = j + 1
    end
    i = i + 1
  end
  i = 0
  return false
end


# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, ' + name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  firstletter = s[0,1]
  goalletter = 'AEIOUaeiou'
  legalletter = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
  if not(legalletter.include? firstletter)
    return false
  end
  if not(goalletter.include? firstletter)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s.empty?
    return false
  end
  j = 0
  while j < s.length
    if s[j] != '1' and s[j] != '0'
      return false
    end
    j = j + 1
  end
  return (s.to_i(2)%4 == 0)
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if isbn.empty?
       raise ArgumentError
    end
    if price <=0 
       raise ArgumentError
    end
    
     @price = price
     @isbn = isbn
    
    def price_as_string
      format("$%.2f", @price)
    end
  end
end