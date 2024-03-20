require "pry"
prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
#Each element would be the price and the index would be a day.
#The best day to buy is in index 1 becuase the price is low
#The best day to sell is in index 4 becuase the price is 15
#Now our profit will be 15-3 = 12

def stock_picker(prices)
  min_price = prices[0]
  min_price_day = 0
  max_profit = 0
  best_days = [0, 0]
  prices.each_with_index do |price, day|
    if price < min_price
      min_price = price
      min_price_day = day
    elsif price - min_price > max_profit
      max_profit = price - min_price
      best_days = [min_price_day, day]
    end
  end
  print best_days
end

stock_picker(prices)
