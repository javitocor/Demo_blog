class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :title, presence: true, length: { maximum:30 }
    validates :content, presence: true, length: { minimun: 50 }
end
