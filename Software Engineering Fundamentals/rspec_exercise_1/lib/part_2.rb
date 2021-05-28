def hipsterfy(word)
    vowels = "aeiou"
    (-1..-word.length).step(-1).each do |i|
        if vowels.include?(word[i])
            word[i] = ""
            return word
        end
    end
    word
end

def vowel_counts(str)
    str.downcase!
    vowels = "aeiou"
    counter = Hash.new(0)
    str.each_char do |char|
        if vowels.include?(char)
            counter[char] += 1
        end
    end
    counter
end

def caesar_cipher(message, n)
    alphabet = "abcdefghijklmnopqrstuvwxyz"

    message.each_char.with_index do |char, i|
        if !(alphabet.include?(char))
            next
        end
        shift = alphabet.index(char) + n
        while shift >= alphabet.length
            shift -= alphabet.length 
        end
        message[i] = alphabet[shift]
    end

    message
end