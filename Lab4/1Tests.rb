require 'rspec'
require_relative '1.rb'

describe "MyFunction" do
  it 'EmptyArrays' do
    expect(getArr([],[])).to eq []
  end
  it 'RandArrays' do
    expect(getArr([1, 4, 2, -2, []],[8, 9, 9, 4, 1, []])).to eq [1, 4, []]
  end
  it 'SameValues' do
    expect(getArr([1, 1, 1, 9], [2, 4, 1, 1])).to eq [1, 1]
  end
end