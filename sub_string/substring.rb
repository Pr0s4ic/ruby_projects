# Substring

dictionary = [
    "below",
    "down",
    "go",
    "going",
    "horn",
    "how",
    "howdy",
    "it",
    "i",
    "low",
    "own",
    "part",
    "partner",
    "sit"
]

def substring(word, dictionary)
    counter = {}
    word_list = word.downcase().split(" ")
    
    for wrd in word_list
        for entry in dictionary
            if wrd.include?(entry)
                if counter.key?(entry)
                    counter[entry] += 1
                else
                    counter[entry] = 1
                end
            end 
        end
    end
    return counter
end

counter = substring("Howdy partner, sit down! How's it going?", dictionary)
puts(counter)