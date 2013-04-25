FactoryGirl.define do
  factory :user do
    email 'test@email.com'
    password 'test123'
    password_confirmation 'test123'
  end
end
