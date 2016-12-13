class Word
  @@words = []
  attr_reader(:word)

  def initialize(attributes)
    @word = attributes[:word]
    @id = @@words.length + 1
    @definitions = []
  end

  def save
    @@words.push(self)
  end

  def definitions
    @definitions
  end

  def save_definiton(definition)
    @definitions.push(definition)
  end

  def self.all
    @@words
  end

  def self.clear
    @@words =[]
  end

  def id
    @id
  end

  define_singleton_method (:find) do |identification|
    found_word = nil
    @@words.each() do |word|
      if word.id() == identification
        found_word = word
      end
    end
    found_word
  end

end
