class Word
  @@words = []
  attr_reader(:word)

  def initialize(word)
    @word = word.capitalize
  end
end
