# == Schema Information
#
# Table name: distances
#
#  id           :uuid             not null, primary key
#  number       :integer          not null
#  unit         :integer          default("yards"), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_club_id :uuid             not null
#
# Indexes
#
#  index_distances_on_number_and_unit_and_user_club_id  (number,unit,user_club_id)
#  index_distances_on_unit                              (unit)
#  index_distances_on_user_club_id                      (user_club_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_club_id => user_clubs.id)
#
class Distance < ApplicationRecord
  belongs_to :user_club
  
  validates :number, :unit, presence: true
  
  enum unit: %i[yards meters feet]
  
  delegate :club, to: :user_club
  
end
