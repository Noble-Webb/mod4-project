class User < ApplicationRecord
    has_many :notes, dependent: :destroy 
    has_many :comments, dependent: :destroy

    has_secure_password

    validates :username, presence: true, uniqueness: true 
end
