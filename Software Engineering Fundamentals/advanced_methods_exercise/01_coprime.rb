# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime? (num_1, num_2) 
  num_1_divisors = []
  num_2_divisors = []

    (2...num_1).each do |ele|
      if num_1 % ele == 0
        num_1_divisors << ele
      end
    end

    (2...num_2).each do |ele|
      if num_2 % ele == 0
        num_2_divisors << ele
      end
    end

    print num_1_divisors
    puts
    print num_2_divisors
    puts

    if num_1_divisors.length == 0 || num_2_divisors.length == 0
      return true
    else 
      num_1_divisors.each do |ele| 
        if num_2_divisors.include?(ele)
            return false
        end
      end
    end
  return true
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
