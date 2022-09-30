require 'rspec'
require_relative '2.rb'

describe "MyFunction" do
  it 'Test1' do
    expect(getTMAtrix([[1, 2, 3, 4, 5]])).to eq [[1],[2],[3],[4],[5]]
  end
  it 'Test2' do
    expect(getTMAtrix([[1, 2, 3, 4, 5],
                       [1, 2, 3, 4, 5],
                       [1, 2, 3, 4, 5]])).to eq [[1,1,1],
                                                 [2,2,2],
                                                 [3,3,3],
                                                 [4,4,4],
                                                 [5,5,5]]
  end
end