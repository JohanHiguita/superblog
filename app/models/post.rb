class Post < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy
	validates :title, :content, presence: true
	validates :content, length: { minimum: 250 }
end
