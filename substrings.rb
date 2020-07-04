def substrings(string, dictionary)
    result = Hash.new(0)
    string_array = string.downcase.gsub(/\p{Punct}/, " ").split
    string_array.each do |string|
        dictionary.each do |word|
            if string.include?(word)
                result[word] += 1
            end
        end
    end
    result
end

dictionary = ['how', 'sit', 'it']

p substrings("Howdy partner, sit down! How's it going? git", dictionary)
