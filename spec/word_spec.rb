require 'rspec'
require 'pry'
require 'word'

describe 'Word' do
  describe '#word' do
    it 'returns a word' do
      test_word = Word.new('Gumption')
      expect(test_word.word).to eq('Gumption')
    end
  end
end
