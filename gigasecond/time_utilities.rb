class Date
  def add_gigasecond
    add_days(10**9)
  end

  def add_days(s)
    seconds_per_day = 60*60*24
    days = s/seconds_per_day
    self + Rational(days)
  end
end

class Time
  def convert_to_date
    Date.parse(self.strftime('%Y/%m/%d'))
  end
end
