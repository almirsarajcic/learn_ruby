def add(augend, addend)
  augend + addend
end

def subtract(minuend, subtrahend)
  minuend - subtrahend
end

def sum(array)
  sum = 0

  array.each do |element|
    sum += element
  end

  sum
end

def multiply(*factors)
  product = 1

  factors.each do |factor|
    product *= factor
  end

  product
end

def power(base, exponent)
  base ** exponent
end

def factorial(number)
  product = 1

  (1..number).each do |factor|
    product *= factor
  end

  product
end
