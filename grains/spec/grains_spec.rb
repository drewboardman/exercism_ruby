require "spec_helper"

MULTIPLIERS = {
  1 => 1,
  2 => 2,
  3 => 4,
  4 => 8,
  16 => 32768,
  32 => 2_147_483_648,
  33 => 2_147_483_648*2,
  64 => 9_223_372_036_854_775_808
}

describe "Grains" do
  context "#square" do
    
    MULTIPLIERS.each do |space, grains|
      it "returns #{grains} for #{space}" do
        expect(Grains.new.square(space)).to eq(grains)  
      end
    end

    it "returns the total grains on the board" do
      expect(Grains.new.total).to eq(18_446_744_073_709_551_615)  
    end
  end
end