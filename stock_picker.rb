require 'pry'
# Task

# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

#   > stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12
# Quick Tips:

# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
  buy = 0
  sell = 0
  profit = 0
  pair_of_days = []
  prices.each_with_index do |buy_price, buy_index|
    prices.each_with_index do |sell_price, sell_index|
      ## if the sell day is after the buy day AND profit is not negative (less than 0)
      if (sell_index > buy_index) && (sell_price - buy_price > profit) 
        profit = sell_price - buy_price
        buy = buy_index
        sell = sell_index
        pair_of_days = [buy, sell]
      end
    end
  end
  pair_of_days
end

p stock_picker(prices)