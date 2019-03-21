# # # This file should contain all the record creation needed to seed the database with its default values.
# # # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# # #
# # # Examples:
# # #
# # #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# # #   Character.create(name: 'Luke', movie: movies.first)



# # 100.times do |i|
# #    CdGenre.create(genre_name: "テスト #{i}")
# # end

# CdGenre.create(genre_name: "アニメ")
# CdGenre.create(genre_name: "洋学")
# CdGenre.create(genre_name: "ロック")
# CdGenre.create(genre_name: "アイドル")
# CdGenre.create(genre_name: "演歌")



# # Cd_genre.create!(
# #   id: 1
# #   'アニメ'
# #   id: 2
# #   '洋楽'
# #   id: 3
# #   'ロック'
# #   id: 4
# #   '演歌'
# #   id: 5
# #   'アイドル'
# # )



# # １個目のデータ
# Product.create!(
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






# # Cd_type.create!(
# #   id: 1
# #   'シングル'
# #   id: 2
# #   'アルバム'
# # )
