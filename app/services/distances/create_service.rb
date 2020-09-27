class Distances::CreateService < Distances::BaseDistanceService
  
  def call
    distance = create_club_distance
    
    Success.new(distance: distance)
  rescue StandardError => e
    Rails.logger.error(e.message)
    Failure.new(errors: e.message)
  end
  
  private
  
  def create_club_distance
    user_club = user.user_clubs.find_or_initialize_by(club: club)
    user_club.distances.build(distance_attributes)
    user_club.save!
    
    user_club.distance
  end

end