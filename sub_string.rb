
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(string, dictionary)
  string_downcase = string.downcase
  dictionary.reduce(Hash.new(0)) do |result, substring|
    count = string_downcase.scan(substring).length
    #How many times below appears in string_downcase
    result[substring] += count if count > 0
    result
  end
end

p substrings("Howdy partner, sit down! How's it it going?", dictionary)
