def caesar_cipher(string, shift_factor)
    alphabet = ('a'..'z').to_a
    string_array = string.split('')
    new_string_array = []

    string_array.each do |letter|
        if alphabet.index(letter)
            index = alphabet.index(letter)
            new_index = index.to_i + shift_factor
            new_index -= 26 if new_index > 25
            letter = alphabet[new_index]
        elsif alphabet.index(letter.downcase)
            index = alphabet.index(letter.downcase)
            new_index = index.to_i + shift_factor
            new_index -= 26 if new_index > 25
            letter = alphabet[new_index].upcase
        else
            letter
        end
        
        new_string_array.push(letter)
    end

    new_string_array.join('')
end


print caesar_cipher('What a string!', 5)

# caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"
