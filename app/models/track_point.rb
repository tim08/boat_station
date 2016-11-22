# retain the geographic coordinates of a point with gps tracker
class TrackPoint < ApplicationRecord
  belongs_to :boat
  after_create :distance_from_berth

  def distance_from_berth
    distance =  Haversine.distance([self.boat.berth.lat, self.boat.berth.lng], [self.lat, self.lng]).to_meters
    self.boat.check_permit_distance(distance)
  end
end
