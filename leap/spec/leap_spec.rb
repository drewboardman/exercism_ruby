require 'spec_helper'

  LEAPS = {
    1996 => 'Yes, 1996 is a leap year',
    1997 => 'No, 1997 is not a leap year',
    1998 => 'No, 1998 is not a leap year',
    1900 => 'No, 1900 is not a leap year',
    2400 => 'Yes, 2400 is a leap year'
  }

describe 'Year' do
  context '#leap?' do
  
    LEAPS.each do |year, leapocity| 
      it "returns #{leapocity.split(" ").first.chomp(',')} for #{year}" do
        expect((Year.leap?(year))).to eq(leapocity)
      end
    end

  end

end