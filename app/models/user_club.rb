# == Schema Information
#
# Table name: user_clubs
#
#  id         :uuid             not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  club_id    :uuid             not null
#  user_id    :uuid             not null
#
# Indexes
#
#  index_user_clubs_on_club_id              (club_id)
#  index_user_clubs_on_user_id              (user_id)
#  index_user_clubs_on_user_id_and_club_id  (user_id,club_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (club_id => clubs.id)
#  fk_rails_...  (user_id => users.id)
#
class UserClub < ApplicationRecord
  has_one :distance, inverse_of: :user_club, dependent: :destroy
  
  belongs_to :user, inverse_of: :user_clubs
  belongs_to :club, inverse_of: :user_clubs
  
end
