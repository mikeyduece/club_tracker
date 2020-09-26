require 'rails_helper'

RSpec.describe Club, type: :model do
  subject { Club.new }
  
  context :validations do
    it { is_expected.to validate_presence_of(:number) }
    it { is_expected.to validate_presence_of(:club_type) }
    it { is_expected.to have_db_index(:club_type) }
    it { is_expected.to have_db_index([:number, :club_type]).unique(true) }
  end
  
  context :associations do
    it { is_expected.to have_many(:user_clubs) }
    it { is_expected.to have_many(:distances) }
  end
end
