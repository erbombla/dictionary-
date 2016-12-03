require 'rspec'
require 'pry'
require 'word'
require 'definition'

describe 'Definition' do
  describe '#define' do
    it 'returns a definition' do
      test_definition = Definition.new({define: 'tending to talk a great deal'})
      expect(test_definition.define).to eq('tending to talk a great deal')
    end
  end

  describe '.all' do
    it 'initializes empty array' do
      expect(Definition.all).to eq([])
    end
  end

  describe '#save' do
    it 'saves a definition to the array' do
      test_definition = Definition.new({define: 'tending to talk a great deal'})
      expect(test_definition.save).to eq([test_definition])
    end
  end
end
