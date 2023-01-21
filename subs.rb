dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(match, dictionary)
    res = {}
    match.downcase!
    for words in dictionary
        words.downcase!
        if match.include?(words) 
            res[words] = match.scan(/(?=#{words})/).count
        end
    end
    res
end 

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
 