class WelcomeController < ApplicationController
  def index
  end

  def control_center
=begin
    if current_user.email == "devan.moylan@backyardlion.com"
      time_to_send = generate_random_time
      QuoteMailer.delay(run_at: time_to_send).weekly_quote
    end
=end
  end

  def welcome_message
  end

  def generate_random_time
    date1 = DateTime.now
    date2 = DateTime.now + 160

    time = Time.at((date2.to_time.to_f - date1.to_time.to_f)*rand + date1.to_time.to_f)
    time
  end



end
