require_relative 'ar.rb'

product1 = Product.create(name: "Chocolate Muffins", description: "Fudgey chocolate muffins", price: 10.99, stock_quantity: 40)
product2 = Product.create(name: "Croissants", description: "Nice and fluffy", price: 7.99, stock_quantity: 30)
product3 = Product.create(name: "Not-Working-Cookies", description: "I wonder if they work?")

if product1.save && product2.persisted? && product3.persisted?
  puts "All products saved successfully."
else
  puts "One or more products failed to save."
end

invalid_product = Product.new(name: "Invalid Product", description: "Missing required columns")

if invalid_product.save
  puts "Invalid product saved successfully."
else
  puts "Failed to save invalid product. Errors:"
  puts invalid_product.errors.full_messages
end
