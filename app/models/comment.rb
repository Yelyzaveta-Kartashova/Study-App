class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :lesson

  broadcasts_to ->(comment) { "lesson_#{comment.lesson_id}_comments" }, inserts_by: :append

  #after_update_commit -> (comment) { current_user ? broadcast_replace_later_to(self, locals: { user: current_user, post: self }) : nil }, inserts_by: :append

  validates :content, presence: true
end
