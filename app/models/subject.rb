class Subject < ApplicationRecord
  extend FriendlyId
  
  friendly_id :name, use: :slugged
  has_many :topics, dependent: :destroy
  accepts_nested_attributes_for :topics, allow_destroy: true
  has_many :lessons, through: :topics
end
