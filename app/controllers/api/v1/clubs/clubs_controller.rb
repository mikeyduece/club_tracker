class Api::V1::Clubs::ClubsController < ApplicationController
  
  def index
    clubs = current_user.clubs.includes(:distances)
    
    success_response(serialized_resource(clubs, ClubSerializer, include: %i[distances]))
  end
  
end