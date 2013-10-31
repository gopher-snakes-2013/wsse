FactoryGirl.define do
  factory :restaurant do
    name 'Nopa'
    user_id 1
  end

  factory :comment do
    content 'get the burger. seriously. so speaketh jeff'
    user_id 1
    restaurant_id 1
  end

  factory :user do
    username 'boot'
    email 'boot@dbc.com'
    password 'password123'
  end
end
