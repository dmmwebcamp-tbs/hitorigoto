	z = 0

30.times do
  z += 1

Purchase.seed do |s|

   s.delivery_status = "受付中"
   s.payment = "1000"
   s.add_postcode = "1000"
   s.add_address = "東京都大田区"
   s.add_number = "222222"
end


end
