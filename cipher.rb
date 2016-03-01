def solve_cipher(input)
	shift = -1
 	input.downcase.chars.map do |item|
     	message = item.ord + shift
     	if message < 97
     		message = (message + 26).chr
     	elsif message > 122
     		message = 122.chr
     	else item
     	message.chr
     	end
 	end.join
end

solve_cipher("ifmmp")