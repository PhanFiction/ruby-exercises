require 'pry-byebug'

def coffee_drink?(drink_list)
  # use #include? to return true when the drink_list (array) contains the string "coffee" or "espresso"
  drink_list.include?("coffee") || drink_list.include?("espresso")
end

def correct_guess?(guess_list, answer)
  # use #any? to return true when any element of the guess_list (array) equals the answer (number)
  guess_list.any? do |item|
    if item == answer
      return true
    end
  end
  false
end

def twenty_first_century_years?(year_list)
  # use #all? to return true when all of the years in the year_list (array) are between 2001 and 2100
  year_list.all? do |year|
    year.between?(2001, 2100)
  end
end

def correct_format?(word_list)
  # use #none? to return true when none of the words in the word_list (array) are in upcase
  word_list.none? do |word|
    if word.upcase == word
      # return false if they all have upcase in them
      return false
    end
  end
  #binding.pry
  true
end

def valid_scores?(score_list, perfect_score)
  # use #one? to return true when only one value in the score_list (hash) is equal to the perfect_score (number)
  score_list.one? { |key, val| val == perfect_score }
end

=begin 
my way of doing this first try

def valid_scores?(score_list, perfect_score)
  # use #one? to return true when only one value in the score_list (hash) is equal to the perfect_score (number)
  duplicates = []

  if score_list.empty?
    return false
  end

  score_list.one? do |key, val|
    if duplicates.include?(val)
      return false
    elsif val == perfect_score 
      duplicates.push(val) 
    end
  end
  true
end 
=end
