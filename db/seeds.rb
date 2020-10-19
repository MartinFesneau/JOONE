require 'json'
require 'open-uri'

JOONE_PRODUCTS = [1456775987223, 1508735614999, 4378766180375, 4166113853463, 10524386311, 10524256583, 417725415457, 3931576631319, 10524471047, 548282892321]
api_key = ENV['API_KEY']
api_password = ENV['API_PASSWORD']
api_key = "734b93edaeb60470f95ef7240dc0b262"
api_password = "1ca54a7201761c040e09eac2b039324f"

puts "Starting creating products"

JOONE_PRODUCTS.each do |id|
  puts "creating product"
  url = "https://jooneparis.myshopify.com/admin/api/2020-10/products/#{id.to_s}.json"
  product_serialized = open(url, "X-Shopify-Access-Token" => "#{api_password}", http_basic_authentication: [api_key, api_password]).read
  product_json = JSON.parse(product_serialized)
  new_product = Product.new(
    joone_id: product_json["product"]["id"], 
    name: product_json["product"]["title"],
    image: product_json["product"]["images"][0]["src"]
  )
  new_product.save!
end
puts "seed finished"
