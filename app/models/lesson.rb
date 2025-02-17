class Lesson < ApplicationRecord
  extend FriendlyId

  friendly_id :title, use: :slugged

  has_many :lesson_tags, dependent: :destroy
  validates :title, :body, presence: true

  has_many :comments, dependent: :destroy

  has_many :tags, through: :lesson_tags
  has_rich_text :body
  validates :body, length: { minimum: 5}
  belongs_to :topic
  default_scope { order(created_at: :desc) }
end