class Trip < ApplicationRecord
  belongs_to :user
  has_many :stops
  validates :name, :user, presence: true
end
