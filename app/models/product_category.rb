class ProductCategory < ApplicationRecord

	validates :name, presence: true, uniqueness: true
	validates :code, presence: true, uniqueness: true
	validates :tax_type, presence: true

	has_many :products, dependent: :restrict_with_error

	enum tax_type: {
		tax_type_8: 0, tax_type_10: 1
	}

end
