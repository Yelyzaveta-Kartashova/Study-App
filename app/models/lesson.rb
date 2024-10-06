class Lesson < ApplicationRecord
  extend FriendlyId

  friendly_id :title, use: :slugged
  has_many :lesson_tags, dependent: :destroy
  has_many :tags, through: :lesson_tags
  belongs_to :topic
  default_scope { order(created_at: :desc) }
end