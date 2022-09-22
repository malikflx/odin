# Task

# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

#   > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   > substrings("below", dictionary)
#   => { "below" => 1, "low" => 1 }
# Next, make sure your method can handle multiple words:

#   > substrings("Howdy partner, sit down! How's it going?", dictionary)
#   => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
# Please note the order of your keys might be different.

# Quick Tips:

# Recall how to turn strings into arrays and arrays into strings.
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  string.downcase!
  string_array = string.split(" ")
  found_words = []
  word_count = []

  dictionary.each do |item|
    if string_array.any? { |string| string.include?(item)}
      found_words.push(item)
    end
    count = string_array.count { |string| string.include?(item)}
    word_count.push(count)
    word_count.delete(0)
  end
  result = found_words.zip(word_count).to_h
end

puts substrings("It's time to go down into the jungle below the Gottard.", dictionary)
