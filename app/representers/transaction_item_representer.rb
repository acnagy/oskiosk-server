module TransactionItemRepresenter
  include Roar::JSON::HAL

  property :type, getter: ->(_) {'transaction_item'}, writeable: false
  property :id, writeable: false, type: Integer
  property :product_id, writeable: false, type: Integer
  property :price, writeable: false, type: Integer
  property :name, writeable: false
  property :quantity, writeable: false, type: Integer

  link :product do
    url_for product if product.present?
  end
end
