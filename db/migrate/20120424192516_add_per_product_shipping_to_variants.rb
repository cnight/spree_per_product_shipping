class AddPerProductShippingToVariants < ActiveRecord::Migration
  def change
		add_column :spree_variants, :per_product_shipping_amount, :float
  end
end