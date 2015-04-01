class Meal
  include Mongoid::Document
  embedded_in :users
  referenced_in :posts
  field :recipe, type: String
end
