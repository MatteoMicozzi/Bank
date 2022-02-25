def date
  t = Time.now
  t_day = t.day.to_s.length == 1 ? "0#{t.day}" : t.day
  t_month = t.month.to_s.length == 1 ? "0#{t.month}" : t.month
  "#{t_day}-#{t_month}-#{t.year}"
end
