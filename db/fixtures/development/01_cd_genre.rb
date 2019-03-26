
# seed-fuを実装。
CdGenre.seed do |s|
  s.id = 1
  s.genre_name = "ロック"
end

CdGenre.seed do |s|
  s.id = 2
  s.genre_name = "ジャズ"
end

CdGenre.seed do |s|
  s.id = 3
  s.genre_name = "クラシック"
end

CdGenre.seed do |s|
  s.id = 4
  s.genre_name = "演歌"
end

CdGenre.seed do |s|
  s.id = 5
  s.genre_name = "ソウル"
end

CdGenre.seed do |s|
  s.id = 6
  s.genre_name = "R&B"
end

CdGenre.seed do |s|
  s.id = 7
  s.genre_name = "歌謡曲・演歌"
end

CdGenre.seed do |s|
  s.id = 8
  s.genre_name = "サウンドトラック"
end

CdGenre.seed do |s|
  s.id = 9
  s.genre_name = "K-ポップ"
end

CdGenre.seed do |s|
  s.id = 10
  s.genre_name = "アニメ・ゲーム"
end

# Cd_label.create!(
#   id: 1
#   'a-music'
#   id: 2
#   'a-production'
#   id: 3
#   'a-label'
#   id: 4
#   'a-vex'
#   id: 5
#   'a-yaka'
# )


# # １個目のデータ
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






# Cd_type.create!(
#   id: 1
#   'シングル'
#   id: 2
#   'アルバム'
# )
