# == Schema Information
#
# Table name: clubs
#
#  id         :uuid             not null, primary key
#  club_type  :integer          default(0), not null
#  number     :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_clubs_on_club_type             (club_type)
#  index_clubs_on_number_and_club_type  (number,club_type) UNIQUE
#
class Club < ApplicationRecord
  has_many :user_clubs, dependent: :destroy, inverse_of: :club
  has_many :distances, through: :user_clubs
  
  validates :number, :club_type, presence: true
  
end
