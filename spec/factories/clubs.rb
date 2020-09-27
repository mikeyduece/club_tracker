FactoryBot.define do
  factory :club do
    number { (100..300).to_a.map(&:to_s).sample }
    club_type { %i[wood driving_iron wedge sand_wedge].sample }
  end
end
