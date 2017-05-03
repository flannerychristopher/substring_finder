dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "enter a phrase"
input = gets.chomp

def substrings(input, dictionary)
  subs = {}
  words = input.downcase.split(/[\s?,?.?\??]+/)

  words.each do |word|
    dictionary.each do |d_word|
      if word.include?(d_word) && subs.include?(d_word)
        subs[d_word] += 1
      elsif word.include?(d_word)
        subs[d_word] = 1
      end
    end
  end

  puts subs
  
end

substrings(input, dictionary)
