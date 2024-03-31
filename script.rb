def substrings(string, dictionary)

  splitted_string = string.downcase.gsub(/[[:punct:]]/, "").split(" ")

  dictionary.reduce(Hash.new(0)) do |result, word|

    splitted_string.each do |word_from_string|

      result[word] += 1 if word_from_string.include?(word)

    end

    result

  end


end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


puts substrings("Howdy partner, sit down! How's it going?", dictionary)