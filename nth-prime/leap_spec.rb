require_relative 'leap'
require "rubygems"
require "rspec"

context '#leap' do
  it "returns true for 1996" do
    expect(Year.leap?(1996)).to eq(true) 
  end
end