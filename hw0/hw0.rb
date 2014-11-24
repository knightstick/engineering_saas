def sum(array)
	return 0 if array.empty?
	array.reduce(&:+)
end

def max_2_sum(array)
	a = array.sort[-1] || 0
	b = array.sort[-2] || 0
	sum([a,b])
end

def sum_to_n?(array,n)
	array.combination(2) { |a,b| return true if sum([a,b]) == n }
	return false
end