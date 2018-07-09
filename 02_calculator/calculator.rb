def add(x,y)
	x + y
end



def subtract(x,y)
	x - y
end



def sum(tab)
	tab.sum
end



def multiply(x,y)
	x * y
end



def power(x,y)
	x ** y
end 


def factorial(n)
 if n < 0
  return nil
 end

 result = 1

 while n > 0
  result = result * n
  n -= 1
 end
 return result
end