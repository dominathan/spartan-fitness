class Follower
  include Mongoid::Document
  embedded_in :users
end
