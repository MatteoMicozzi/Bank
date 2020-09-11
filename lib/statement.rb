require 'require_all'
require_all 'lib'

class Printer
  def date
    t = Time.now
    t_day = t.day.to_s.length == 1 ? "0#{t.day}" : t.day
    t_month = t.month.to_s.length == 1 ? "0#{t.month}" : t.month
    "#{t_day}-#{t_month}-#{t.year}"
  end

  def digits(float)
    number = (float - float.truncate) * 10
    (number - number.truncate).zero? ? "#{float}0" : float
  end

  def print(statement)
    statement.join("\n")
  end
end
