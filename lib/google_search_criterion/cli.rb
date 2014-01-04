require "thor"

module GoogleSearchCriterion
  class CLI < Thor

    desc "compare KEYPHRASE ANOTHER_KEYPHRASE",
         "compares KEYPHRASE against ANOTHER_KEYPHRASE"
    def compare(keyphrase, another_keyphrase)
      puts "#{keyphrase} => #{GoogleSearchCriterion::Search.results(keyphrase)}"
      puts "#{another_keyphrase} => #{GoogleSearchCriterion::Search.results(another_keyphrase)}"
    end

    desc "get KEYPHRASE", "gets results from Google for KEYPHRASE"
    def get(keyphrase)
      puts "#{keyphrase} => #{GoogleSearchCriterion::Search.results(keyphrase)}"
    end
  end
end