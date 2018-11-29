class Trip < ApplicationRecord
  belongs_to :user
  validates :name, :user, presence: true
end
