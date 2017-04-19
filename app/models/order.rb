class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  has_many :products, through: :line_items
  accepts_nested_attributes_for :line_items, :allow_destroy => true

  def products_id
  	products.map(&:id)
  end
end
