def palindrome?(str)
    revStr = ""
    (-1..-str.length).step(-1).each {|i| revStr += str[i]}
    if revStr == str
        return true
    end
    return false
end

def substrings(str)
    rtnArr = []
    str.each_char.with_index do |char, i|
        if !(rtnArr.include?(char))
            rtnArr << char
        end
        (i+1...str.length).each do |idx|
            char += str[idx]
            if !(rtnArr.include?(char))
                rtnArr << char
            end
        end
    end
    rtnArr
end

def palindrome_substrings(str)
    substrings(str).select {|ele| ele.length > 1 && palindrome?(ele)}
end