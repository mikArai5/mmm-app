FactoryBot.define do
  factory :wishlist do
    name               {'namae'}
    price              { 3000 }
    image              { Faker::Lorem.sentence }
    association :user
    
    after(:build) do |wishlist|
      wishlist.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
