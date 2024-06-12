class Users::UserResource < BaseResource
  root_key :user

  attributes :id, :name, :email
end
