FactoryBot.define do
  factory :record do
    price       {'100'}
    time_minute {'10'}
    content     {'勉強'}
    rate        {'10'}
    association :user
  end
end
