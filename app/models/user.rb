class User < ApplicationRecord
  has_many :assignments, dependent: :destroy
  has_many :roles, through: :assignments
  has_one_attached :avatar, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  after_create :send_welcome_email

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

  private

  def send_welcome_email
    DeviseMailer.welcome_email(self).deliver_now
  end
  
end
