def who_is_bigger(a, b, c)
	
	if a == nil || b == nil || c == nil 
		return "nil detected"
	else
		array = []
  		array[0] = a
  		array[1] = b
  		array[2] = c
  		max_values = array.group_by{|v| v}.max_by{|v| v}.last.to_a
  		string = max_values.join('')
  		if string.to_i == a 
  			return "a is bigger"
  		end
  		if string.to_i  == b 
  			return "b is bigger"
  		end
  		if string.to_i  == c 
  			return "c is bigger"
  		end
  	end
  	
end

def reverse_upcase_noLTA(string)
	#string = string.gsub!(';','è')
	array = string.scan(/[\w+]+|[[:punct:]]+/)
	array = array.map{|i| i.delete("T")}
	array = array.map{|i| i.delete("t")}
	array = array.map{|i| i.delete("a")}
	array = array.map{|i| i.delete("l")}
	string = array.join(' ')
	string = string.reverse
	string = string.upcase 
	string = string.gsub(' ; ',';')
	string = string.gsub(' , ',' ,')
	return string
end

def array_42(array)
	test = array.include?(42)
	return test	
end

def magic_array(array)
	array = array.flatten
	array = array.sort
	array = array.map{|i| i*2 }
	count = array.count
	for i in 0..count
		value = array[i]
		val = value.to_f / 3
		if (val.to_f == val.to_i)
			array [i] = 0
		else
			
		end
	end
	array.delete(0)
	array = array.uniq
	return array
end

def main
	puts  ""
	puts  "> 03_basics"
	puts  "----------------------"
	puts  "> who_is_bigger(a, b, c)"
	puts  "> reverse_upcase_noLTA"
	puts  "> array_42"
	puts  "> magic_array"
	puts  ""
  	
end

main
