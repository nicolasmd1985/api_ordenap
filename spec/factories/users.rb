FactoryGirl.define do
  factory :user do
    email "nicolas@gmail.com"
    name "Nicolas"
    provider "github"
    uid "adsa7asd"
  end
end
