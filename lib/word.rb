class Word
  @@words = []
  attr_reader(:word, :pOs, :id)

  def initialize(attributes)
    @word = attributes[:word]
    @pOs = attributes[:pOs]
    @id = @@words.length + 1
    @definitions = []
  end

  def save
    @@words.push(self)
  end

  def definitions
    @definitions
  end

  def save_definition(definition)
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

  define_singleton_method(:find) do |id|
    found_word = nil
    @@words.each() do |word|
      if word.id.eql?(id)
        found_word = word
      end
    end
    found_word
  end

end
