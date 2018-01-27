require "pry"
class PigLatinizer

  def piglatinize(word)
    word_arr = word.split(//)
    vowels = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
    if vowels.include?(word_arr[0])
      word_arr << "way"
    else
      i = 0
      while vowels.include?(word_arr[i]) == false || i == word_arr.length -1 do
        word_arr << word_arr.shift
        i += 1
      end
      word_arr << "ay"
    end
    word_arr.join
  end

  #text_arr = text.split(" ")
  #text_arr.collect do |word|
  #end.join(" ")
end

puts PigLatinizer.new.piglatinize("pork")
