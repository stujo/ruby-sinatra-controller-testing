FactoryGirl.define do
  
  sequence :email do |n|
    "user#{n}@stujo.com"
  end

  factory :user do
    email
  end

end