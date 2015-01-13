require "spec_helper"

PRIMES = {
  1 => 2,
  2 => 3,
  6 => 13,
  10_001 => 104_743
}

describe "Prime" do
  context "#nth" do

    PRIMES.each do |n, prime|
      it "returns #{prime} for n = #{n}" do
        expect(Prime.nth(n)).to eq(prime)
      end
    end

    it "raises an error when given an invalid n" do
      expect{Prime.nth(0)}.to raise_error(ArgumentError)
    end

  end
end