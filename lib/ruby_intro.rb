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
  
  i = 0;
  j = 0;
  arr.each { |it1|
    arr.each { |it2|
      #puts it1+it2;
      if((it1+it2) == n)
        if(i != j)
          return true;
        end
      end
      j += 1;
    }
    i += 1;
  }
  return false;
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
  # YOUR CODE HERE
end

array ='v';
#puts sum_to_n?(array,0);
puts starts_with_consonant?(array);


# Part 3

class BookInStock
  @isbn;
  @price;
  def initialize(isbn, price)
    @isbn = isbn;
    @price = price;
  end
# YOUR CODE HERE
end
