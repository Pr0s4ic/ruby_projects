# Stock Picker

day_array = [17,3,6,9,15,8,6,1,10]

def stock_picker(day_array)
    buy = 0
    sell = 0
    profit = 0

    for buy_day in (0 .. day_array.length() - 1)
        temp_buy = day_array[buy_day]
        
        for sell_day in (buy_day .. day_array.length - 1)
            temp_profit = day_array[sell_day] - day_array[buy_day]

            if profit < temp_profit
                buy = buy_day
                sell = sell_day
                profit = temp_profit
            end
        end
    end
    return "[#{buy}, #{sell}]"
end

result = stock_picker(day_array)
puts(result)