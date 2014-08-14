a = ARGV[0..-1].join(" ")  #"How is life"

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


puts convert_sentence(a)
