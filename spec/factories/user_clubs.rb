FactoryBot.define do
  factory :user_club do
    user
    association :club, factory: :club
    
    factory :user_clubs_with_distances do
      after(:create) do |uc, _evaluator|
        create_list(:distance, 5, user_club: uc)
      end
    end
  end
end
