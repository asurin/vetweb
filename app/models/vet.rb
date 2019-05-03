class Vet < ApplicationRecord
  validates_presence_of :name, :specialty
end
