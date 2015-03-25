class ShareSerializer < ActiveModel::Serializer
  attributes :id, :from_user_id, :to_user_id, :to_email, :url
end
