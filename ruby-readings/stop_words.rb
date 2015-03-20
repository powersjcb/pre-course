#stop words
stopwords = %w{the a by on for of are with just but and to the my I has some in}
text = %q{Los Angeles has some of the nicest weather in the country.}

words = text.scan(/\w+/)
keywords = words.select{|word| !stopwords.include?(word)}

puts keywords.join(' ')
keywords_perc = (keywords.length.to_f / words.length.to_f * 100).to_i
puts "#{keywords_perc}% keywords"

