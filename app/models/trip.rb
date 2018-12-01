class Trip < ApplicationRecord
  belongs_to :user
  has_many :stops, dependent: :destroy
  validates :name, :user, presence: true
end
