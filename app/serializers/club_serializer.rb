class ClubSerializer < BaseSerializer
  attributes :number, :club_type
  
  has_many :distances
  
end
