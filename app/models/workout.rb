class Workout
  include Mongoid::Document
  embedded_in :users
  referenced_in :posts
  belongs_to :routine
  field :exercise, type: String
  field :focus, type: String
end
