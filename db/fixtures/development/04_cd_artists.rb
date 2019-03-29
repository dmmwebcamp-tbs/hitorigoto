	z=0


30.times do
	z+=1
CdArtist.seed do |s|
   s.cd_category = "1"
   s.artist_name = "アーティスト#{z}"
end

end	