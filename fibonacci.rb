class Fibonacci

    CACHE = [1, 1]
    def calculate(num)
        raise TypeError.new("integer required") unless num.is_a? Integer
        raise ArgumentError.new("negative argument not allowed") if num < 0
        return CACHE[num] if CACHE[num]
        puts "calculate(#{num})"

        f = calculate( num-2) + calculate(num-1)
    CACHE[num] = f         
    end
end


puts Fibonacci.new.calculate(10)