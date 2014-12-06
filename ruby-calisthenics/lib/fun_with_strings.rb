module FunWithStrings
  def palindrome?
    str = self.remove_punc_and_case.join
    return true if str.length == 1
    return true if str.length == 2 &&
		   str[0] == str[-1]
    return str[1..-2].palindrome? if str[0] == str[-1]
  end
  def count_words
    hash = {}
    array = self.remove_punc_and_case
    array.each do |word|
      hash[word] = array.count(word)
    end
    hash
  end
  def anagram_groups
    self.remove_punc_and_case.group_by {|x| x.chars.sort}.values
  end

  def remove_punc_and_case
    self.each_char.select {|c| c.match(/\w|\s/)}
      .join.downcase.split(' ')
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
