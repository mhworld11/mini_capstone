# json.array! @products.each do |product|
#   json.id product.id
#   json.name product.name
#   json.price product.price
#   json.image product.image_url
#   json.description product.description
# end

json.array! @products.each do |product|
  json.partial! 'product.json.jbuilder', product: product
end



