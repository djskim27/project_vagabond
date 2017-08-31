class Post < ApplicationRecord
  belongs_to :city
  belongs_to :user
  validates :title, presence: true, length: {maximum:200, too_long:"must have a maximum of 200 characters!"}
  validates :content, presence: true
end
