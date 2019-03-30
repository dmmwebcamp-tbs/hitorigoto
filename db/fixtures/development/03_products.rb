z = 0

30.times do
  z += 1

Product.seed do |s|
  s.cd_genre_id = "#{z}"
  s.cd_label_id = "#{z}"
  s.cd_artist_id = "#{z}"
  s.cd_type = "1"
  s.cd_name = " CDの名前#{z}"
  s.owner_comment = "店長からのコメント#{z}"
  s.image = Rails.root.join("db/fixtures/image/test#{z}.jpg").open
  s.price = "1000"
  s.saled_date = "2019年3月28日"
  s.stock_number = "#{z}"
end


end
