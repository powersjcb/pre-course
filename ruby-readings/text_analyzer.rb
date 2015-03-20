# class TextAnalyzer
# #Features:
# Character count
# Character count excluding spaces
# Line count
# Word count
# Sentence count
# Paragraph count
# Average number of words per sentence
# Average number of sentences per paragraph

file_name = ARGV[0] || "oliver.txt"
  #initialize text
lines = File.readlines(file_name)
# Line count
line_count = lines.size
text = lines.join

puts "#{line_count} lines"

# Character count
total_characters = text.length
puts "#{total_characters} characters"
# Character count excluding spaces
total_characters_nospaces = text.gsub(/\s+/, "").length
puts "#{total_characters_nospaces} total characters excluding spaces"

# Word count
word_count = text.split.length
puts "#{word_count} words"

# Sentence count
sentence_count = text.split(/\.|\!|\?/).length
puts "#{sentence_count} sentences"

# Paragraph count
paragraph_count = text.split(/\n\n/).length
puts "#{paragraph_count} paragraphs"

# Average number of words per sentence
words_per_sentence = word_count/sentence_count
puts "#{words_per_sentence} words per sentence (average)"

# Average number of sentences per paragraph
sentences_per_paragraph = sentence_count/paragraph_count
puts "#{sentences_per_paragraph} sentences per paragraph (average)"

#Fluf words
stopwords = %w{the a by on for of are with just but and to the my I has some in}
all_words = text.scan(/\w+/)
good_words = all_words.select { |word| !stopwords.include?(word) }
good_percentage = (good_words.count.to_f/word_count.to_f*100).to_i
puts "#{good_percentage}% of words that are non-fluff words"

