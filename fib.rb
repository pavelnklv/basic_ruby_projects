# def fib n
#   a, b = 0, 1
#   result = ''
#   while a < n
#     result += "#{a} "
#     a, b = b, a+b
#   end
#   result
# end

# p fib 1000

class Fib
  def initialize n
    @a, @b = 0, 1
    @i = 0
    @sum = 0    
    @n = n
  end

  def even_fibonacci
    while @i <= @n
      @i = @a + @b
      @sum += @i if @i % 2 == 0
      @a = @b
      @b = @i
    end
    @sum
  end
end

result = Fib.new 4_000_000_000_000
p result.even_fibonacci
