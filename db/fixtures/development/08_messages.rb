	z = 0

30.times do
  z += 1

Message.seed do |s|
  s.user_id = "#{z}"
  s.title = "タイトル#{z}"
  s.body = "本文#{z}"
end


end
