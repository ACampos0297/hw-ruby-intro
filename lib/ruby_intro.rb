# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  #two elements of arr add up to n
  return false if arr.empty? #if array is empty return false for any n
  # create every permutation of 2 
  #see if any meet the requirement by passing a block
  arr.permutation(2).any? {|a,b| a+b == n} 
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /[bcdfghjklmnprstvwxyz]/i.match(s[0])
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s=='0'
  /^[10]*00$/.match(s)
end

# Part 3

class BookInStock
	# YOUR CODE HERE
	attr_accessor :isbn, :price
	
	def initialize isbn,price
		raise ArgumentError if isbn.empty? || price<=0
		@isbn = isbn
		@price = Float(price)
	end
	
	def price_as_string
		sprintf "$%.2f", @price
	end
end
