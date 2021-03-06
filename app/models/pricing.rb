class Pricing < ActiveRecord::Base
  belongs_to :product
  has_many :cart_items

  def available_quantity
    quantity - cart_items.sum(:quantity)
  end
end
