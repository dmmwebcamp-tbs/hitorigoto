	z=0


30.times do
	z+=1
User.seed do |s|
  s.email = "user#{z}@com"
  s.last_name = "田中"
  s.first_name ="一郎#{z}"
  s.last_name_kana = "タナカ"
  s.first_name_kana = "イチロー#{z}"
  s.postcode = "000-000#{z}"
  s.address = "東京都#{z}"
  s.phone_number = "090-111-111#{z}"
  s.password = "g2157126"
end

end	


Admin.seed do |s|
  s.email = "aaa@aaa"
  s.password ="g2157126"
end
