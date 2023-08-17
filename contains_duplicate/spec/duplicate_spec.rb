require 'rspec'
require './lib/duplicate'

RSpec.describe 'contains_duplicate' do
  it 'returns true if an integer appears at least twice' do
    nums1 = [1,2,3,1]
    nums2 = [1,1,1,3,3,4,3,2,4,2]
    
    expect(contains_duplicate(nums1)).to eq(true)
    expect(contains_duplicate(nums2)).to eq(true)
  end
  
  it 'returns false if every element is distinct' do
    nums1 = [1,2,3,4]

    expect(contains_duplicate(nums1)).to eq(false)
  end
end