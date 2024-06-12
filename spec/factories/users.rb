# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string           not null
#  name            :string           not null
#  password_digest :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
FactoryBot.define do
  factory :user do
    name { "John Doe" }
    sequence(:email) { |n| "person#{n}_#{Time.current}@email.com" }
    password { "password" }
  end
end
