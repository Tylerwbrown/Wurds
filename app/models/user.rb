class User < ActiveRecord::Base
  has_and_belongs_to_many :group

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 6 }

  has_secure_password
end
