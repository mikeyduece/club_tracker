class Distances::BaseDistanceService < BaseService
  
  def initialize(user, params)
    @user = user
    @params = params
  end
  
  private_class_method :new
  
  private
  
  attr_reader :user, :params
  
  def club
    club = relationship(:club)
    id = club&.dig(:id)
    @club_id ||= Club.find_by(id: id)
  end
  
  def distance_attributes
    @distance_attributes ||= attributes(params)
  end

end