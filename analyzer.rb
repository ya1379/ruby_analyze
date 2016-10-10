text=''
stopwords = %w{the a by on for of are with just but and to the my I has some in} 
line_count = 0
File.open("text.txt").each do |line|
 line_count += 1
 text << line
end
all_words = text.split
good_words = all_words.reject{ |word| stopwords.include?(word) }
good_percentage = ((good_words.length.to_f / all_words.length.to_f) * 100).to_i
total_characters = text.length
total_characters_nospaces = text.gsub(/\s+/, '').length
word_count = text.split.length
paragraph_count = text.split(/\n\n/).length
sentence_count = text.split(/\.|\?|!/).length
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{word_count} words" 
puts "#{total_characters_nospaces} characters excluding spaces" 
puts "#{total_characters} characters" 
puts "#{line_count} lines" 
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)" 
puts "#{good_percentage}% of words are non-fluff words" 