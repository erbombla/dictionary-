require 'rspec'
require 'pry'
require 'word'

describe 'Word' do
  before :each do
    Word.clear
  end

  describe '#word' do
    it 'returns a word' do
      test_word = Word.new({word: 'loquacious'})
      expect(test_word.word).to eq('loquacious')
    end
  end

  describe '.all' do
    it 'initializes empty array' do
      expect(Word.all).to eq([])
    end
  end

  describe '.save' do
    it 'saves a word to the array' do
      test_word = Word.new({word: 'loquacious'})
      expect(test_word.save).to eq([test_word])
    end
  end

  describe '.clear' do
    it 'clears the array' do
      test_word = Word.new({word: 'loquacious'})
      test_word.save
      expect(Word.clear).to eq([])
    end
  end

  describe '#pOs' do
    it 'returns part of speech for a word' do
      test_word = Word.new({word: 'loquacious', pOs: 'adj'})
      expect(test_word.pOs).to eq('adj')
    end
  end

end
