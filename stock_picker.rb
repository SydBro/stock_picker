stock_week = [17,3,6,9,15,8,6,1,10]

def stock_picker(week)
  new_week = Array.new
  week.each {|v| new_week.push(v)}

  buy = new_week.min
  sell = new_week.max

  if (buy == new_week[-1])
    new_week.delete_at(-1)
    buy = new_week.min
  end

  if (sell == new_week[0])
    new_week.delete_at(0)
    sell = new_week.max
  end

  until new_week.index(buy) < new_week.index(sell)
    new_week.delete(buy)
    buy = new_week.min
  end

  buy_and_sell = [week.index(buy), week.index(sell)]
  p buy_and_sell

end

stock_picker(stock_week)