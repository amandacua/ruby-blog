class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true,
  uniqueness: true

  validates :email, presence: true

  validates :password_digest, presence: true

  validates :phone,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 15 }

end
