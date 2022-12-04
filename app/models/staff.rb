class Staff < ApplicationRecord  # 名前: 必須
  validates :name, presence: true

end
