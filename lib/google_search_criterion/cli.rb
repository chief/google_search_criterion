require "thor"

module GoogleSearchCriterion
  class CLI < Thor

    desc "sort KEYPHRASES",
         "sort KEYPHRASES by Google search results count"
    def sort(*keyphrases)
      keyphrases.map! do |keyphrase|
        { keyphrase: keyphrase,
          results: GoogleSearchCriterion::Search.results(keyphrase) }
      end.sort! { |x, y| y[:results] <=> x[:results]  }

      keyphrases.each do |keyphrase|
        puts "#{keyphrase[:keyphrase]} => #{keyphrase[:results]}"
      end
    end

    desc "get KEYPHRASES", "gets results from Google for KEYPHRASES"
    def get(*keyphrases)
      puts "Nothing to show" if keyphrases.empty?

      keyphrases.each do |keyphrase|
        puts "#{keyphrase} => #{GoogleSearchCriterion::Search.results(keyphrase)}"
      end
    end
  end
end