# == Schema Information
#
# Table name: users
#
#  id         :uuid             not null, primary key
#  email      :string           not null
#  first_name :string           not null
#  last_name  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email)
#
class User < ApplicationRecord
  has_many :user_clubs, dependent: :destroy, inverse_of: :user
  has_many :clubs, through: :user_clubs
  has_many :distances, through: :user_clubs, source: :distances
  
  validates :email, :first_name, :last_name, presence: true
  validates :email, uniqueness: true

  before_commit :add_clubs, on: :create
  
  private
  
  def add_clubs
    self.club_ids = Club.pluck(:id)
  end
  
end
