require 'rspec'
require 'pry'
require 'word'

describe 'Word' do
  describe '#word' do
    it 'returns a word' do
      test_word = Word.new('Loquacious')
      expect(test_word.word).to eq('Loquacious')
    end
  end

  describe '.all' do
    it 'initializes empty array' do
      expect(Word.all).to eq([])
    end
  end

  describe '#save' do
    it 'saves a word to the array' do
      test_word = Word.new('Loquacious')
      expect(test_word.save).to eq([test_word])
    end
  end

  describe '.clear' do
    it 'clears the array' do
      test_word = Word.new('Loquacious')
      test_word.save
      expect(Word.clear).to eq([])
    end
  end

end
