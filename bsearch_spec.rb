require_relative 'bsearch.rb'

describe Bsearch do
  describe '#initialize' do
    it 'correctly assigns the target' do
      expect(Bsearch.new(5, 0, 100).target).to eq  5
    end
  end
end
