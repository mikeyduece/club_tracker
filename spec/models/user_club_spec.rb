require 'rails_helper'

RSpec.describe UserClub, type: :model do
  subject { UserClub.new }
  
  context :associations do
    it { is_expected.to have_one(:distance).dependent(:destroy) }
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:club) }
  end
  
end