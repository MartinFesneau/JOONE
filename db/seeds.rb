require 'json'
require 'open-uri'

api_password = ENV['SHOPIFY_API_PASSWORD']

puts "Starting seed"

url = "https://jooneparis.myshopify.com/admin/api/2020-10/products.json"
product_serialized = open(url, "X-Shopify-Access-Token" => api_password).read
product_list = JSON.parse(product_serialized)

product_list["products"].first(10).each do |product|
  new_product = Product.new(
    name: product["title"],
    image: product["images"][0]["src"]
  )
  new_product.save!
end

puts "seed finished"
