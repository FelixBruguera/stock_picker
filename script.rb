def stock_picker(prices)
    prices_array = prices.combination(2).to_a
    index_array = (0...prices.length).to_a.combination(2).to_a
    profit = prices_array.map {|price| price[1]-price[0]}
    max_profit = profit.max
    max_index = profit.index(profit.max)
    p index_array[max_index]
  end