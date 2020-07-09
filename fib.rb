def fib n
  a, b = 0, 1
  result = ''
  while a < n
    result += "#{a} "
    a, b = b, a+b
  end
  result
end

p fib 1000
