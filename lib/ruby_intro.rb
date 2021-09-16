# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort.last(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.permutation(2).each { |pair|
    break true if pair.sum == n
  } == true 
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  not (s =~ /\A[a-z&&[^aeiou]]/i).nil?
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  (not (s =~ /\A[01]+\z/i).nil?) ? (s.to_i(2) % 4 == 0) : false
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_reader :isbn, :price

  def initialize(book_isbn, book_price)
    self.isbn = book_isbn
    self.price = book_price
  end
  
  def isbn= (s)
    s == "" ? (raise ArgumentError, "empty isbn") : @isbn = s
  end
  
  def price= (fvalue)
    fvalue <= 0 ? (raise ArgumentError, "minus price") : @price = fvalue
  end
  
  def price_as_string
    "$%.2f" % (self.price)
  end
    
end

