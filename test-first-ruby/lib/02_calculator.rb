def add(x,y)
  x+y
end

def subtract(x,y)
  x-y
end

def sum(array)
  !array.empty? ? array.inject {|sum, n| sum + n } : 0
end

def multiply(array)
  array.inject {|product, n| product*n}
end

def power(x,y)
  x**y
end


def factorial(n)
  return 1 if n==0
  n*factorial(n-1)
end