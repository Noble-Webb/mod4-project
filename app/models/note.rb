class Note < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy

    validates :content, :title, presence: true 
    validates :content, length: {maximum: 200}
end
