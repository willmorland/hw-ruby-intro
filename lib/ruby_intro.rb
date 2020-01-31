# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  sum = 0;
  array.each { |item|
    sum = sum + item;
  }
  # puts sum;
  return sum;
end

def max_2_sum(array)
  if(array.length() == 0)
    return 0;
  elsif(array.length() == 1)
    return array[0];
  else
    a1 = -1.0/0.0
    a2 = -1.0/0.0 
    array.each { |item|
      if(item > a1)
        if(a1 > a2)
          a2 = a1;
        end
        a1 = item;
      elsif(item > a2)
        a2 = item;
      end
    }
    sum = a1+a2;
    return sum;
  end
end

def sum_to_n?(arr, n)
  if(arr.length() == 0)
    return false;
  elsif(arr.length() == 1)
    return false;
  end
  
  return arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  str = "Hello, ";
  return str.concat(name);
end

def starts_with_consonant?(s)
  if(s.length()==0)
    return false;
  end
  if(/^[^AEIOUaeiou\W]/i.match(s)==nil) #if the first letter matches with any letter other than a vowel, return false; otherwise, return true
    return false;
  else
    return true;
  end
end

def binary_multiple_of_4? s
  if(s.length < 3)
    if(s=='0')
      return true;
    end
    return false;
  end
  
  array = s.split('');
  array.each { |item|
    if((item!='1')&&(item!='0'))
      return false;
    end
  }
  
  ending = s[-2..-1];
  if((ending[0] == '0') && (ending[1] == '0'))
    return true;
  else
    return false;
  end
end

#array ='100100';
#puts sum_to_n?(array,0);
#puts starts_with_consonant?(array);
#puts binary_multiple_of_4?(array);


# Part 3

class BookInStock
  @isbn;
  @price;
  def initialize(isbn, price)
    raise ArgumentError.new(
    "Expected a non-empty string"
  ) if isbn.length == 0
  
  raise ArgumentError.new(
    "Expected a positive price"
  ) if price <= 0
    @isbn = isbn;
    @price = price;
  end
  
  def isbn
    @isbn;
  end
  
  def price
    @price;
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    return "$" + sprintf("%.2f", @price)
  end
# YOUR CODE HERE
end

book = BookInStock.new('12345', 3.90)
book.price_as_string;