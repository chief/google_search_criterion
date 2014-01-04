require "thor"

module GoogleSearchCriterion
  class CLI < Thor
    desc "compare WORD ANOTHER_WORD", "compares WORD against ANOTHER_WORD"
    def compare(word, another_word)
      puts "#{word} => #{GoogleSearchCriterion::Search.results(word)}"
      puts "#{another_word} => #{GoogleSearchCriterion::Search.results(another_word)}"
    end
  end
end