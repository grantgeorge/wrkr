class UserSerializer < ActiveModel::Serializer
  attributes :id, :provider, :uid, :name, :nickname, :image, :email
end
