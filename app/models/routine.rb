class Routine
  include Mongoid::Document
  belongs_to :users
  references_many :workouts
end
