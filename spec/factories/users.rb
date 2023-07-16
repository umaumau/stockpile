FactoryBot.define do
  factory :user do
    email                 {'a@a'}
    password              {'aaaaaa'}
    password_confirmation {password}
  end
end