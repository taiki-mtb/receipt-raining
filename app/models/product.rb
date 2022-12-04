class Product < ApplicationRecord
  validates :name, presence: true
	validates :product, presence: true

end
