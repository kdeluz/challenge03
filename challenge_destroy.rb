require_relative 'ar.rb'

product_to_destroy = Product.find_by(name: "Chocolate Muffins")

if product_to_destroy
  product_to_destroy.destroy
  puts "Product deleted successfully."
else
  puts "Product not found."
end