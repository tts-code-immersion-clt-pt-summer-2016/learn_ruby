def add (num1, num2)
 return (num1 + num2)
end

def subtract (num1, num2)
  return (num1 - num2)
end

def sum(x)
answer = 0
x.each do |n|
  answer=answer +n
  end
 return answer
 end

def multiply(num)
result = 1
num.each do |i|
result *= i
end
return result
end

def power(n,i)
  numbers.inject(:**)
end

def factorial(x)
    if x==0
        1
    else
        x*factorial(x-1)
    end
end
