class BoatMailer < ApplicationMailer

  def alarm_email(boat)
    @boat = boat
    mail(to: 'some.email', subject: 'alarm')
  end

end
