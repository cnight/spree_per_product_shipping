module Spree
  class Calculator::PerProduct < Calculator
		preference :default_amount, :decimal, :default => 0
	
		def self.description
			return 'Per Product' #XXX needs i18n
		end
		
		def compute(object=nil)
			return unless object && object.respond_to?(:line_items)
			value = BigDecimal(0.0)
			object.lines_items.each do |li|
				value += BigDecimal(li.variant.per_product_shipping_amount || preffered_default_amount)
			end
		end
	end
end