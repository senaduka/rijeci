module Formatable
  extend ActiveSupport::Concern


  def created_at_formatted
    created_at.in_time_zone("Europe/Sarajevo").strftime("%d.%m.%Y %H:%M")
  end


end