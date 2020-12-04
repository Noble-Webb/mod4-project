class Note < ApplicationRecord
    belongs_to :user

    validates :content, :title, presence: true 
    validates :content, length: {maximum: 200}
end
