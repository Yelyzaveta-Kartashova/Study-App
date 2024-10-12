class User < ApplicationRecord
  has_many :assignments
  has_many :roles, through: :assignments

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
end
