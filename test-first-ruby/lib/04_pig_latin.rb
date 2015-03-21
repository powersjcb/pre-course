def translates(word)
  vowels = %w(a e i o u)
  start_length = 0
    # vowel start
  if vowels.include?(word[0])
    return "#{word}ay"
    # three consonants at start
  elsif (!vowels.include?(word[0]) & !vowels.include?(word[1]) & !vowels.include?(word[2]))
    start_length = 3
    # two consonants at start
  elsif ( !vowels.include?(word[0]) & !vowels.include?(word[1]) )
    start_length = 2
    # one consonant at start
  else
    start_length = 1
  end

  # Handles cases with 'qu' and splits words with consonants 
  if qu_shift?(word, start_length)
    start_length += 1
  end
    return pig_shift(word, start_length)
end


# helper methods
def qu_shift?(word, start_length)
  word.slice(start_length-1,2) == 'qu'
end

def pig_shift(word, n)
  "#{word[n..-1]}#{word[0..(n-1)]}ay"
end


# enumerating method
def translate(words)
  words.split.map! { |word| translates(word) }.join(" ")
end


# puts translate("ssquare test ttest tttest")

# puts pig_shift('ttest', 2)
