def stock_picker(prices)
	profit = 0
	best_days = ""

	prices.each do |i|
		prices.each do |j|
			if prices.index(i).to_i < prices.index(j).to_i
				if j - i > profit
					profit = j-i
					best_days = "Buy on day #{prices.index(i)} and sell on day #{prices.index(j)}"
				end
			end
		end
		i += 1
	end
	puts profit
	puts best_days
end

b = [17,3,6,9,15,8,6,1,10]

stock_picker(b)
