user_wallet = 40
promo_codes = { 'omg999' => 250, 'omg250' => 50 }

puts '*' * 30
sl_no = 1
promo_codes.each do |key, value|
  puts "#{sl_no}. #{key} - #{value}"
  sl_no += 1
end
puts '*' * 30

puts 'Enter the recharge amount'
recharge_amount = gets.to_f

puts 'Enter the promocode'
promo_code = gets.chomp
# puts recharge_amount
# puts promo_codes.to_s
# puts promo_codes.keys

return user_wallet + recharge_amount + promo_codes[promo_code] if recharge_amount == 999 && ((promo_codes.key? promo_code) && promo_code == 'omg999')
return user_wallet + recharge_amount + promo_codes[promo_code] if recharge_amount == 250 && ((promo_codes.key? promo_code) && promo_code == 'omg250')
user_wallet += recharge_amount

puts "Your new balance is Rs #{user_wallet}"
