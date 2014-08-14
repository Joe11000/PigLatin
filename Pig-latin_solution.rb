# a = ARGV[0..-1].join(" ")  #"How is life"

def convert_word(word)
  match_results = /(\A[^aeiou]*)(.*)/i.match(word)
  if match_results[1].length > 0
    match_results[2] + match_results[1] + "ay"
  else
    match_results[2]
  end
end

def convert_sentence(sentence)
  sentence.split(" ").map{|i| convert_word(i)}.join(" ")
end





puts "Enter sentence to convert into Pig Latin. Please only enter real words"

input = gets.chomp

until input == "-1"
  puts convert_sentence(input)
  puts "\nPlease enter another word. '-1' to exit"

  input = gets.chomp
end

puts "Thanks for Playing!"
