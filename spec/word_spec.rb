require 'rspec'
require 'pry'
require 'word'
require 'definition'

describe 'Word' do
  before :each do
    Word.clear
  end

  describe '#word' do
    it 'returns a word' do
      new_word = Word.new({word: 'loquacious'})
      expect(new_word.word).to eq('loquacious')
    end
  end

  describe '#pOs' do
    it 'returns the part of speech for a word' do
      new_word = Word.new({word: 'loquacious', pOs: 'adj'})
      expect(new_word.pOs).to eq('adj')
    end
  end

  describe '.all' do
    it 'initializes empty array' do
      expect(Word.all).to eq([])
    end
  end

  describe '.save' do
    it 'saves a word to the array' do
      new_word = Word.new({word: 'loquacious'})
      expect(new_word.save).to eq([new_word])
    end
  end

  describe '.clear' do
    it 'clears the array' do
      new_word = Word.new({word: 'loquacious'})
      new_word.save
      expect(Word.clear).to eq([])
    end
  end

  describe '#id' do
    it 'returns a word id' do
      new_word = Word.new({word: 'loquacious'})
      expect(new_word.id).to eq(1)
    end
  end

  describe '.find' do
    it 'returns a word by its unique id' do
      new_word = Word.new({word: 'loquacious'})
      new_word.save
      new_word2 = Word.new({word: 'stridency'})
      new_word2.save
      expect(Word.find(new_word.id)).to eq(new_word)
    end
  end

  describe '#save_definiton' do
    it 'saves a new instance of a definition to an array' do
      new_word = Word.new({word: 'loquacious', pOs: 'adj'})
      new_definition = Definition.new({define: 'tending to talk a great deal'})
      expect(new_word.save_definiton(new_definition)).to eq([new_definition])
    end
  end
end
