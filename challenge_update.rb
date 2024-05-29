require_relative 'ar.rb'

products_update = Product.where('stock_quantity > ?', 40)

products_update.each do |product|
  product.stock_quantity += 1
  product.save
end

puts "Showing stock quantities for products with stock_quantity greater than 40."