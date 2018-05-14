module ApplicationHelper
  def datetime_format(date)
    l date, format: "%Y/%m/%d %H:%M"
  end
end
