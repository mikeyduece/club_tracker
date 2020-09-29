require 'rails_helper'

RSpec.describe Api::V1::Clubs::ClubsController, type: :request do
  include_context 'shared headers'
  include_context 'shared payload'
  let!(:user_clubs) { create_list(:user_clubs_with_distances, 5, user: user) }
  let(:club_ids) { user_clubs.pluck(:club_id) }

  before do
    login_as_user(user)
    get clubs_path, headers: headers
  end

  context 'GET #index' do
    include_examples 'shared payload response'
    
    it { expect(response).to have_http_status(:ok) }
  end
  
end
