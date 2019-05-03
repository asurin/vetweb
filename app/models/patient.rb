class Patient < ApplicationRecord
  validates_presence_of :dob, :animal
  validates :name, length: { minimum: 2, maximum: 20 }
end
