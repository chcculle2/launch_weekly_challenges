class Phrase

  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase.downcase.split.sort
  end

  def word_count
    result = {}
    uniq = phrase.uniq

    while uniq.length > 0 do
      word = uniq.shift
      result[word] = phrase.count(word)
    end
    result
  end
end
