class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
	validates :product_category_id, presence: true

	belongs_to :product_category

	def product_category_shown_value
		product_category.name
	end

	def product_category_tax_type
		product_category.tax_type_i18n
	end
end
