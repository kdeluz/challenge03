require_relative 'ar.rb'

number_of_products = Product.count

puts "There are #{number_of_products} in the products table."

products_10 = Product.where('price > ?', 10).where('name LIKE ?', 'C%')

products_10.each do |products|
    puts "#{products.name} is less than $10, and start with the letter C."
end

products_low = Product.where('stock_quantity < ?', 5)

products_low.each do |product_low|
    puts "#{product_low.name} are low in supply. These are the amounts: #{product_low.stock_quantity}."
end
