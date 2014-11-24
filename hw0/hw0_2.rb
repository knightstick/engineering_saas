def hello(name)
	"Hello, #{name}"
end

def starts_with_consonant?(s)
	/^[^aeiou\W]/i.match(s) ? true : false
end

def binary_multiple_of_4?(s)
	return true if s == '0'
	s.chars {|c| return false unless c == '0' || c == '1'}
	s[-1] == '0' && s[-2] == '0'
end