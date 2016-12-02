class Word
  @@words = []
  attr_reader(:word)

#Class Initialization
  def initialize(word)
    @word = word.capitalize
  end

#Instance Methods
  def save
    @@words.push(self)
  end

#Class Methods
  def self.all
    @@words
  end

  def self.clear
    @@words =[]
  end
end 
