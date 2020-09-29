require 'rails_helper'

RSpec.describe Api::V1::Distances::DistancesController, type: :request do
  include_context 'shared headers'
  let(:driver) { create(:club, number: '1', club_type: :wood) }

  let(:params) do
    {
      data: {
        type: 'distance',
        attributes: {
          number: 200,
          unit: :yards,
        },
        relationships: {
          club: { id: driver.id }
        }
      }
    }
  end

  before do
    login_as_user(user)
    post distances_path, params: params, headers: headers
  end

  context 'POST #create' do
    it { expect(response).to have_http_status(:created) }

    it 'should create a new distance object each time' do
      res = json_response

      expect(res.dig(:data, :attributes, :number)).to eq(200)
      expect(res.dig(:data, :attributes, :unit)).to eq('yards')
    end

    it 'should be able to have more than one distance per club' do
      post distances_path, params: params, headers: headers
      user_club_distances = user.user_clubs.last.distances

      expect(user_club_distances.count).to eq(2)
      expect(user_club_distances.last.club.id).to eq(driver.id)
    end
  end
end