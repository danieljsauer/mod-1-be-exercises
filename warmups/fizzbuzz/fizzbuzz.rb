
x = 0

while x <= 1000

  if x % 3 == 0 && x % 5 == 0 && x % 7 == 0 
    p "SuperFizzBuzz"
  elsif x % 3 == 0 && x % 7 == 0 
    p "SuperFizz"
  elsif x % 5 == 0 && x % 7 == 0 
    p "SuperBuzz"
  elsif x % 3 == 0 && x % 5 == 0 
    p "FizzBuzz"
  elsif x % 3 == 0
    p "Fizz"
  elsif x % 5 == 0
    p "Buzz"
  elsif x % 7 == 0
    p "Super"
  else 
    p x 
  end 
  
  x +=1
end 
