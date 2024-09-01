def caesar_cipher(str, num)
    result = ""
    str.each_char do |char|
        if char =~ /[a-z]/
            shifted = ((char.ord - 'a'.ord + num) % 26 + 'a'.ord).chr
            result += shifted
        elsif char =~ /[A-Z]/
            shifted = ((char.ord - 'A'.ord + num) % 26 + 'A'.ord).chr
            result += shifted
        else
            result += char
        end
    end
    puts result
end

caesar_cipher("What a string!", 5)  # => "Bmfy f xywnsl!"