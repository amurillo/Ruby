class Roman
	def addNumber1to3(number)
		return "I"*number
	end
	def addNumber4(number)
		return "IV"
	end
	def addNumber5to8(number)
		return "V"+ "I"* (number - 5)
	end
	def addNumber9(number)
		return "IX"
	end
	
	def addDecena(number)
		
		decena = number/10
		numero = number - decena*10
		
		case decena
		when 4
			strDecena = "XL"
		when 9
			strDecena = "XC"
		when 5..8
			strDecena = "L" +  "X" *(decena - 5)
		else 
			strDecena = "X" * decena
		end
		
		case numero
		when 1..3
			romano = addNumber1to3 numero
		when 4
			romano = addNumber4 numero
		when 5..8
			romano = addNumber5to8 numero
		when 9
			romano = addNumber9 numero	
		else
			romano = ""
		end
		
		return strDecena + romano
	end
	
	def convert(number)
		case number
		when 1..3
			return addNumber1to3 number
		when 4
			return addNumber4 number
		when 5..8
			return addNumber5to8 number
		when 9
			return addNumber9 number
		when 10..99
			return addDecena(number)
		else
			return "No evaluado convert"
		end
	end
end
