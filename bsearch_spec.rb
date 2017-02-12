require_relative 'bsearch.rb'

describe Bsearch do
  let(:subject) { Bsearch.new(5, 0, 100) }
  let(:subject_inv) { Bsearch.new(5, 100, 0) }
  let(:subject_hi) { Bsearch.new(105, 0, 100) }
  let(:subject_lo) { Bsearch.new(-15, 0, 100) }
  describe '#initialize' do
    it 'correctly assigns the target' do
      expect(subject.instance_variable_get(:@target)).to eq  5
    end

    it 'correctly assigns the start of the array' do
      expect(subject.instance_variable_get(:@arr)[0]).to eq  0
    end

    it 'correctly assigns inverted values to the start of the array' do
      expect(subject_inv.instance_variable_get(:@arr)[0]).to eq  0
    end

    it 'correctly assigns the end of the array' do
      expect(subject.instance_variable_get(:@arr)[-1]).to eq  100
    end

    it 'correctly assigns inverted values to the end of the array' do
      expect(subject_inv.instance_variable_get(:@arr)[-1]).to eq  100
    end
  end

  describe '#check' do
    it 'throws an error if target greater than array values' do
      expect { subject_hi.search }.to raise_error ArgumentError
    end

    it 'throws an error if target lesser than array values' do
      expect { subject_lo.search }.to raise_error ArgumentError
    end
  end
end
