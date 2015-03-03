class HomeController < ApplicationController
  def index
    @current_time = Time.now.to_formatted_s(:short)
    @greet_message = case Time.now.hour
    when 5..11
      "Buenos Dias"
    when 12..15
      "Buenas Tardes"
    when 16..19
      ["Buenas Tardes", "Afternoon!"].sample
    when 20..23, 0..4
      "Buenas Noches"
    end
  end
end
