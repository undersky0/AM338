class Authorization
  include Mongoid::Document
  field :provider, type: String
  field :uid, type: String
  field :user_id, type: String
  field :token, type: String
  field :secret, type: String
  field :name, type: String
  field :url, type: String
  
  belongs_to :user
end
