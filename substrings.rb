# Substrings
#
# Implement a method #substrings that takes a word as the first argument
# and then an array of valid substrings (your dictionary) as the
# second argument. It should return a hash listing each substring (case insensitive)
# that was found in the original string and how many
# times it was found.

# (c) 2015 Joshua Klein


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(phrase,dict)
    hash = Hash.new(0)
    for x in 0..dict.length-1 do
        idx = 0
        while (idx < phrase.length)
            if phrase.index(Regexp.new(dict[x],true),idx)
                hash[dict[x]] += 1
                idx = phrase.index(Regexp.new(dict[x],true),idx)+1
            else
                idx +=1
            end
        end
    end
    return hash
end



puts(substrings('below',dictionary))

puts(substrings("Howdy partner, sit down! How's it going?", dictionary))
