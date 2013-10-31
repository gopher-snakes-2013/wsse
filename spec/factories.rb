FactoryGirl.define do
  factory :comment do
    content 'get the burger. seriously. so speaketh jeff'
    restaurant_id 1
  end
  factory :restaurant do
    name 'Nopa'
    # comments FactoryGirl.build(:comment)
  end

end
