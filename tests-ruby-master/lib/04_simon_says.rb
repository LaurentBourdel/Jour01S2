def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string, count)
	string1 = string
	for i in 1..count-1
		string = string + " " + string1
	end
  return string
end

def start_of_word(string, count)
	str = []
	for i in 0..count-1
		str[i] = string.slice(i)
	end
	string = str.join('')
  return string
end

def first_word(string)
	array = string.scan(/[\w+]+|[[:punct:]]+/)
	string = array[0]
	return string
end

def titleize (string)
	array1 = []
	array2 = []
	array1 = string.scan(/[\w+]+|[[:punct:]]+/)
	count = array1.count
	for i in 0..count-1
		string = array1[i].to_s
		if string.length > 3 || i == 0
			string = string.capitalize
			array1[i] = string
		end
	end
	string = array1.join(' ')
	return string
end