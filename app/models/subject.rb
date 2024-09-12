class Subject < ApplicationRecord
  has_many :topics, dependent: :destroy
  accepts_nested_attributes_for :topics, allow_destroy: true
  has_many :lessons, through: :topics
end
