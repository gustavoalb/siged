# -*- encoding : utf-8 -*-
# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Siged20::Application.initialize!

CalendarDateSelect::FORMATS[:br_date] = {
  # Here's the code to pass to Date#strftime
  :date => "%d/%m/%Y",
  :time => " %I:%M %p",  # notice the space before time.  If you want date and time to be seperated with a space, put the leading space here.

  :javascript_include => "format_br_date"
}
File.umask(0)


CalendarDateSelect.format = :br_date
