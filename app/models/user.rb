class User < ApplicationRecord
    has_secure_password
    has_many :pecks
    has_many :branches
    
    validates :password, presence: true
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid Email Address' }
    validates :username, presence: true
end
