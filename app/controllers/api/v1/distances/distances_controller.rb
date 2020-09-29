class Api::V1::Distances::DistancesController < ApplicationController

  def create
    service = Distances::CreateService.call(current_user, create_distance_params)
    return error_response(service.errors) unless service.success?

    success_response(serialized_resource(service.distance, DistanceSerializer), :created)
  end

  private

  def create_distance_params
    params.permit(data: [:type, attributes: %i[number unit], relationships: [user: %i[id], club: %i[id]]])
  end

end
