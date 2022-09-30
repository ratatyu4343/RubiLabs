require 'rspec'
require_relative '3.rb'

describe "MyFunction" do
  it 'Test1' do
    expect(getResult([[3.to_r, 6.to_r],
                      [4.to_r, 2.to_r]], [15.to_r,8.to_r])).to eq [Rational('1/1'), Rational('2/1')]
  end
end
