class Share
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  field :from_user_id, type: String
  field :to_user_id, type: String
  field :to_email, type: String
  field :url, type: String
  
  belongs_to :from, foreign_key: 'from_user_id', class_name: 'User'
  belongs_to :to, foreign_key: 'to_user_id', class_name: 'User'
end
