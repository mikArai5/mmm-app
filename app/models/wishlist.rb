class Wishlist < ApplicationRecord

  belongs_to :user
  has_one_attached :image
  
  with_options presence: true do
    validates :price
    validates :name
    validates :image
  end
    validates :price, numericality: {with: /\A[0-9]+\z/, message: 'Half-width number'}
end
