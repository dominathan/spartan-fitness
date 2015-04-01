class Post
  include Mongoid::Document
  belongs_to :users
  references_many :routines
  references_many :meals
  references_many :workouts
end
