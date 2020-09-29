FactoryBot.define do
  factory :distance do
    number { (100..350).to_a.sample }
    unit { :yards }
    association :user_club, factory: :user_club
  end
end
