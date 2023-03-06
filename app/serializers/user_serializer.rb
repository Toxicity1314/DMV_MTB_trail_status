class UserSerializer < ActiveModel::Serializer
  attributes :username, :admin, :id
end
