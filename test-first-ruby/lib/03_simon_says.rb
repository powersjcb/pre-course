def echo(text)
  text
end

def shout(text)
  text.upcase!
end

def repeat(text, n = 2)
  ([text]*n).join(" ")
end

def start_of_word(word,last)
  word.slice(0,last)
end

def first_word(words)
  words.split()[0]
end

def titleize(title)

  little = %w(over the and)

  words = title.split
  words.first.capitalize!
  if words.length < 2
    return words.join
  else
    words.map!.with_index do |word|
      ( !little.include?(word) ) ? word.capitalize : word
    end
    return words.join(" ")
  end
end

# puts titleize('david copperfield')