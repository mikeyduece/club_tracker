FactoryBot.define do
  factory :club do
    numbers = ["54 Degree", "2", "9", "4", "52 Degree", "56 Degree", "7", "3", "P", "6", "5", "60 Degree", "1", "A", "58 Degree", "8"]
    sequence :number do |n|
      numbers.sample + n.to_s
    end
    club_type { %i[wood driving_iron wedge sand_wedge].sample }
    
  end
end
