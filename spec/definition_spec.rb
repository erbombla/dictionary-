require 'rspec'
require 'pry'
require 'definition'

describe 'Definition' do
  before :each do
    Definition.clear
  end

  describe '#definition' do
    it 'returns a definition' do
      test_definition = Definition.new({definition: 'tending to talk a great deal'})
      expect(test_definition.definition).to eq('tending to talk a great deal')
    end
  end

  describe '.all' do
    it 'initializes empty array' do
      expect(Definition.all).to eq([])
    end
  end

  describe '.save' do
    it 'saves a definition to the array' do
      test_definition = Definition.new({definition: 'tending to talk a great deal'})
      expect(test_definition.save).to eq([test_definition])
    end
  end

  describe '.clear' do
    it 'clears the array' do
      test_definition = Definition.new({definition: 'tending to talk a great deal'})
      test_definition.save
      expect(Definition.clear).to eq([])
    end
  end

  describe '#id' do
    it 'returns a definition id' do
      test_definition = Definition.new({definition: 'tending to talk a great deal'})
      expect(test_definition.id).to eq(1)
    end
  end

  describe '.find' do
    it 'returns a definition by its unique id' do
      test_definition = Definition.new({definition: 'tending to talk a great deal'})
      test_definition.save
      test_definition2 = Definition.new({definition: 'overcome with rage'})
      test_definition2.save
      expect(Definition.find(test_definition.id)).to eq(test_definition)
    end
  end
end
