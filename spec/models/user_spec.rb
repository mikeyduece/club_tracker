require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new }
  
  context :validations do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
  end
  
  context :associations do
    it { is_expected.to have_many(:user_clubs).dependent(:destroy) }
    it { is_expected.to have_many(:clubs).through(:user_clubs) }
    it { is_expected.to have_many(:distances).through(:user_clubs) }
  end
  
end
