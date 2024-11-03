class User < ApplicationRecord
  has_many :assignments, dependent: :destroy
  has_many :roles, through: :assignments
  has_one_attached :avatar, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable

  def admin?
    self.roles.exists?(name: 'Admin')
  end

  def teacher?
    self.roles.exists?(name: 'Teacher')
  end

  def student?
    self.roles.exists?(name: 'Student')
  end

  def active?
    assignments.any? { |assignment| assignment.status == 'active' }
  end
  
end
