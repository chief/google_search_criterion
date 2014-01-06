# GoogleSearchCriterion

A toy to compare words against Google search results. Language is a vivid
organism. There is no right or wrong. By observing results from Google one can
observe the usage of words and compare them with others. All explanations
should be avoided :)

## Installation

Add this line to your application's Gemfile:

    gem 'google_search_criterion'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install google_search_criterion

## Usage

Type  ```$ google-results``` for help.

1. Examine names popularity

  In Greece - like everywhere else - we have a couple of very popular first names
  for men like γιωργος γιαννης κωστας . I believe that γιαννης is more popular
  than γιωργος and κωστας is in the third place. I can easily investigate my
  assumption:

  ```
    $ google-results sort γιαννης γιωργος κωστας
  ```

2. Examine preferred form of a word

  I want to write αχιλεας but I am not sure if it is written with one 'λ' or
  2 'λ's or one 'χ'

  ```
    $ google-results sort αχιλεας αχχιλεας αχιλλεας αχχιλλεας
  ```

3. I want to see what is the most popular polital party

  ```
    $ google-results sort "νεα δημοκρατια" πασοκ κκε συριζα ανελ
  ```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/google_search_criterion/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
