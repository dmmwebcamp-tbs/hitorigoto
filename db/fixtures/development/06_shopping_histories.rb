z = 0

30.times do
  z += 1

ShoppingHistory.seed do |s|
  s.purchase_id = "#{z}"
  s.quantity = "2"
  s.paid_price = "1000"
end


end

