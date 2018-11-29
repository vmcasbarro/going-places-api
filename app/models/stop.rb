class Stop < ApplicationRecord
  belongs_to :trip
  validates :location, :trip, :date, presence: true
end
