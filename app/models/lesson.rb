class Lesson < ApplicationRecord
  belongs_to :topic

  default_scope { order(created_at: :desc) }
end