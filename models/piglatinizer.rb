require "pry"
class PigLatinizer

  def piglatinize(word)
    word_arr = word.split(//)

    if !word_arr[0].scan(/[AEIOUaeiou]/).empty?
      word_arr << "way"
    else
      i = 0
      binding.pry
      while word_arr[i].scan(/[AEIOUaeiou]/).empty?
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
