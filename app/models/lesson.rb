class Lesson < ApplicationRecord
  extend FriendlyId

  friendly_id :title, use: :slugged
  belongs_to :topic
  default_scope { order(created_at: :desc) }
end