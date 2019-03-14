class Book < ApplicationRecord
  validates :title, :author_id, :price, presence: true
  
  belongs_to :author
end
