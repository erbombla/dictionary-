class Word
  @@words = []
  attr_reader(:word, :pOs)

#Class Initialization
  def initialize(attributes)
    @word = attributes[:word]
    @pOs = attributes[:pOs]
  end

#Class Methods
  def save
    @@words.push(self)
  end

  def self.all
    @@words
  end

  def self.clear
    @@words =[]
  end
end
