class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.integer :quantity, default: 0
      t.references :cart
      t.references :pricing

      t.timestamps
    end
  end
end
