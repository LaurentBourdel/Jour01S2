def ask_conv
  puts " "
  puts "> Conversion: (C -> F) tape c - (F -> C) tape f"
  print "> "
  return gets.chomp.to_s
end

def ask_temp
  puts "> Temperature?"
  print "> "
  return gets.chomp.to_f
end

def ftoc(temp_f)
	temp_c = (temp_f - 32) * 5 / 9
	return temp_c
end

def ctof(temp_c)
	temp_f = (temp_c * 1.8) + 32
	return temp_f
end

def temp_converter
	conv = ask_conv
	if conv == "f"
  		t_c = ftoc(ask_temp)
  		puts "> temperature (C) = #{t_c}"
  		puts " "
  	end
  	if conv == "c"
  		t_f = ctof(ask_temp)
  		puts "> temperature (F) = #{t_f}"
  		puts " "
  	end
	
end

temp_converter