def partition(arr, num)
    rtnArr = [[],[]]
    arr.each do |ele|
        if ele < num
            rtnArr[0] << ele
        else
            rtnArr[1] << ele
        end
    end
    rtnArr
end

def merge(hash_1, hash_2)
    newHash = hash_1.merge(hash_2)
end

def censor(sentence, curses)
    vowels = "aeiou"
    sentence = sentence.split
    sentence.each_with_index do |word,i|
        if curses.include?(word) || curses.include?(word.capitalize) || curses.include?(word.upcase) || curses.include?(word.downcase)
            word.each_char.with_index do |char,i|
                if vowels.include?(char) || vowels.include?(char.upcase) || vowels.include?(char.downcase)
                    word[i] = "*"
                end
            end
            sentence[i] = word
        end
    end
    sentence.join(" ")
end

def power_of_two?(num)
    while true
        if num == 1
            return true
        end

        if num % 2 == 0
            num /= 2
        else
            return false
        end
    end

end