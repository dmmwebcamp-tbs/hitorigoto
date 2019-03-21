# Products.create!(
#    cd_genre_id: 1,
#    cd_label_id: 1,
#    cd_type: 1,
#    cd_name: 'ひろまる',
#    owner_comment: '可愛い',
#    image_id: 'cd-2459831_1280.jpg',
#    price: 260000,
#    saled_date: Time.zone.now,
#    stock_number: 7,
# )

# seed-fuを実装。
Product.seed do |s|
  s.id = 1
  s.cd_genre_id = 1
  s.cd_label_id = 1
  s.cd_type =  1
  s.cd_name = 'ひろまる'
  s.owner_comment = '可愛い'
  s.price = 260000
  s.saled_date = Time.zone.now
  s.stock_number = 7
end

# Product.seed do |s|
#   s.id = 2
#   s.cd_genre_id = 2
#   s.cd_label_id = 2
#   s.cd_type = 0
#   s.cd_name = 'ひろま'
#   s.owner_comment = '可愛い'
#   s.price = 260000
#   s.saled_date = Time.zone.now
#   s.stock_number = 7
# end
