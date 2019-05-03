class Room < ApplicationRecord
  validates_presence_of :name, :room_type
end
