require 'rails_helper'

RSpec.describe Distance, type: :model do
  subject { Distance.new }
  
  context :validations do
    it { is_expected.to validate_presence_of(:number) }
    it { is_expected.to validate_presence_of(:unit) }
    it { is_expected.to have_db_index(:unit) }
    it { is_expected.to have_db_index(:user_club_id) }
    it { is_expected.to have_db_index([:number, :unit, :user_club_id]) }
  end
  
  context :associations do
    it { is_expected.to belong_to(:user_club) }
  end
  
  
end
