class Astronaut < ApplicationRecord
  validates_presence_of :name, :age, :job
  has_many :space_missions
end
