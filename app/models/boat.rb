class Boat < ApplicationRecord
  belongs_to :berth
  has_many :track_points

  PERMITTED_DISTANCE = 50

  def check_permit_distance(distance)
    BoatMailer.deliver_alarm_email(self) if distance > PERMITTED_DISTANCE
  end
end
