def stock_picker(array)

	profit = 0
	days = []

	array.each_with_index do |value,day|
		array.each_with_index do |value2,day2|
			if day < day2 && value2-value > profit
				profit = (value2-value)
				days = [day,day2]
			end
		end
	end
	puts profit
	p days
end

stock_picker([17,3,6,9,15,8,6,1,10,40,13,33,5,30])


