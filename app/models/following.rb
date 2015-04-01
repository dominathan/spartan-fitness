class Following
  include Mongoid::Document
  belongs_to :users
end
