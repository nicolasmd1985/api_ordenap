FactoryGirl.define do
  factory :token do
    expires_at "2018-08-16 15:30:25"
    association :user, factory: :user
  end
end
