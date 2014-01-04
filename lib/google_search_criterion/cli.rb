require "thor"

module GoogleSearchCriterion
  class CLI < Thor
    desc "compare WORD ANOTHER_WORD", "compares WORD against ANOTHER_WORD"
    def compare(word, another_word)

      binding.pry
      puts "#{word} => #{::Search.results(word)}"
      puts "#{another_word} => #{::Search.results(another_word)}"
    end
  end
end