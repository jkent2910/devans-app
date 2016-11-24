FactoryGirl.define do

  sequence :email do |n|
    "user#{n}@gmail.com"
  end

  factory :user do |u|
    u.email
    u.password 'password'
    u.password_confirmation 'password'
  end

  factory :devan, :parent => :user do |d|
    d.email 'devan@moylan.com'
  end

end
