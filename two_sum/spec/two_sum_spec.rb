require 'rspec'
require './lib/two_sum'

RSpec.describe 'two_sum' do
  it 'return indices of the two numbers such that they add up to 9 ' do
    n = [2,7,11,15]
    t = 9

    expect(two_sum(n, t)).to eq([0,1])
  end
  
  it 'return indices of the two numbers such that they add up to 6' do
    n = [3,2,4]
    t = 6

    expect(two_sum(n, t)).to eq([1,2])
  end
  
  it 'return indices of the two numbers such that they add up to 6' do
    n = [3,3]
    t = 6

    expect(two_sum(n, t)).to eq([0,1])
  end
 
  # it 'return indices of the two numbers such that they add up to 6' do
  #   n = [3,2,3]
  #   t = 6

  #   expect(two_sum(n, t)).to eq([0,2])
  # end
end