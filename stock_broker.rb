def ease_stock(c_input)
  stock_hash = { 'quote' => [], 'quantity' => [], 'price' => [], 'status' => [] }
  badly_formed_array = []
  stock_input = c_input
  stock_input.split(',').each do |stock|
    stock = stock.split(' ')
    if !stock[0].match(/\A[A-Z]*\z/).nil? && !stock[1].match(/\A[0-9]*\z/).nil? && !stock[2].match(/\A[0-9.]*\z/).nil? && !stock[3].match(/\A[BS]*\z/).nil?
      stock_hash['quote'] << stock[0]
      stock_hash['quantity'] << stock[1]
      stock_hash['price'] << stock[2]
      stock_hash['status'] << stock[3]
    else
      badly_formed_array << stock.join(' ')
    end
  end

  bought_stock = 0
  sold_stock = 0
  index = 0
  stock_hash['quote'].size.times do
    if stock_hash['status'][index] == 'B'
      bought_stock += stock_hash['quantity'][index].to_i * stock_hash['price'][index].to_f
    elsif stock_hash['status'][index] == 'S'
      sold_stock += stock_hash['quantity'][index].to_i * stock_hash['price'][index].to_f
    end
    index += 1
  end

  s_output = "Buy : #{bought_stock.round} Sell : #{sold_stock.round}"
  b_output = ''
  unless badly_formed_array.empty?
    b_output = " ; badly_formed #{badly_formed_array.size}: "
    badly_formed_array.each do |b|
      b_output = b_output + b + ' ;'
    end
  end
  puts "\"#{s_output + b_output}\""
end

client_input = 'ZNGA 1300 2.66 B,CLH15.NYM 50 56.32 B,OWW 1000 11.623 B,OGG 20 580.1 B'
ease_stock(client_input)
