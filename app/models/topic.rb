class Topic < ApplicationRecord
  belongs_to :subject
  has_many :lessons, dependent: :destroy
  accepts_nested_attributes_for :lessons, allow_destroy: true
end
