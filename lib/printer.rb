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
    if float.integer?
      "#{float}.00"
    elsif float.to_s.split('.').last.length == 1
      "#{float}0"
    else
      "#{float.truncate(2)}"
    end
  end

  def print(statement)
    statement.join("\n")
  end
end
