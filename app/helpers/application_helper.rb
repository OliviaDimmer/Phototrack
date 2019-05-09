module ApplicationHelper
  def time_display(datetime)
      datetime.strftime("%m/%d/%Y, %l:%M %p")
  end
end
