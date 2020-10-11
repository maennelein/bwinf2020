class Fibonacci

    CACHE = [1, 1]
    def calculate(num)
        return CACHE[num] if CACHE[num]
        puts "calculate(#{num})"

        f = calculate( num-2) + calculate(num-1)
    CACHE[num] = f         
    end
end

puts Fibonacci.new.calculate(2000)