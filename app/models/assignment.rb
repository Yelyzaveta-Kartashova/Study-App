
class Assignment < ApplicationRecord
  belongs_to :user
  belongs_to :role
  belongs_to :assigned_by, class_name: 'User'

  enum status: { active: 0, pending: 1, inactive: 2 }

  validates :role, presence: true
  validates :status, presence: true
  validates :assigned_by, presence: true
end
