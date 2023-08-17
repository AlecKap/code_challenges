require 'rspec'
require './lib/anagram'

RSpec.describe 'is_anagram' do
  it 'return true if t is an anagram of s' do
    s = "anagram"
    t = "nagaram"

    expect(is_anagram(s, t)).to eq(true)
  end
  
  it 'return false if t is not an anagram of s' do
    s = "rat"
    t = "car"

    expect(is_anagram(s, t)).to eq(false)
  end
end