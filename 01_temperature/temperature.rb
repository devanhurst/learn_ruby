def ftoc(temp)
	# if temp == 32 then 0
	# elsif temp == 212 then 100
	# elsif temp == 98.6 then 37
	# elsif temp == 68 then 20
	# end
	(temp - 32) * 5 / 9
end

def ctof(temp)
	# if temp == 0 then 32
	# elsif temp == 100 then 212
	# elsif temp == 20 then 68
	# end
	temp * 9 / 5 + 32
end