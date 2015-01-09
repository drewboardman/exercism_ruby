require "date"
require_relative "time_utilities"

class Gigasecond

  def self.from(input)
    if input.is_a? Date
      input.add_gigasecond
    elsif input.is_a? Time
      input.convert_to_date.add_gigasecond
    end
  end

end

