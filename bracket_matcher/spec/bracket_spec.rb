require 'rspec'
require '../lib/bracket'

RSpec.describe 'well_formed?' do
  describe 'well formed' do
    it 'returns true for a well-formed bracket' do
      expect(well_formed?('{}')).to eq(true)
      expect(well_formed?('{()}')).to eq(true)
      expect(well_formed?('{[]}{[]}')).to eq(true)
    end

    it 'returns false for an ill well-formed bracket' do
      expect(well_formed?('{(')).to eq(false)
      expect(well_formed?('{[)][]}')).to eq(false)
      expect(well_formed?(']')).to eq(false)
    end
  end
end
