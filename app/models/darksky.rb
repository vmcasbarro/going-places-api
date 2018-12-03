# frozen_string_literal: true

class Darksky < ApplicationRecord
  belongs_to :user
  validates :text, :user, presence: true
end
