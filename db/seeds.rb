require 'json'
require 'open-uri'
require 'faker'

JOONE_PRODUCTS = [1456775987223, 1508735614999, 4378766180375, 4166113853463, 10524386311, 10524256583, 417725415457, 3931576631319, 10524471047,]
api_key = ENV['API_KEY']
api_password = ENV['API_PASSWORD']

puts "Starting creating products"

# JOONE_PRODUCTS.each do |id|
#   url =   "https://#{api_key}:#{api_password}@jooneparis.myshopify.com/admin/api/2020-10/products/#{id}.json"
#   product_serialized = open(url, http_basic_authentication: [api_key, api_password])
#   product_json = JSON.parse(product_serialized.read)

#   new_product = Product.new(
#     joone_id: product_json["product"]["id"], 
#     name: product_json["product"]["title"],
#     image: "wip"
#   )
#   new_product.save!
# end

id = 1
10.times do 
  puts "creating product #{id}"
  product = Product.new(
    joone_id: id, 
    name: Faker::Artist.name,
    image: "https://source.unsplash.com/random/150x150"
  )
  id += 1
  product.save!
end