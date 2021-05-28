def average(num1, num2) 
    (num1 + num2) / 2.0
end

def average_array(arr)
    arr.inject {|acc, ele| acc + ele} / arr.length.to_f
end

def repeat(str, x)
    str *= x
end

def yell(str)
    str.upcase! + "!"
end

def alternating_case(sentence)
    sentence = sentence.split
    (0...sentence.length).each do |i|
        if i % 2 == 0
            sentence[i].upcase!
        else
            sentence[i].downcase!
        end
    end
    sentence.join(" ")
end