class City < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :users, through: :posts
    extend FriendlyId
    friendly_id :name
    
    
end
