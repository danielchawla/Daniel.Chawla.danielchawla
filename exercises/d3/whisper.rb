def whisper(to_lowercase)
	lowercase = to_lowercase.downcase
	puts "#{lowercase}"
end

def twist(to_twist)
	array = to_twist.split("").shuffle
	twisted = array.join
	puts "#{twisted}"
end

twist("apple blue banana")


def invert(hash)
	inverted_hash = hash.map do |key,element|
		[element,key]
	end
	puts "#{inverted_hash}"
end



hash = {:ab  => "zy", :cd => "xw"}
invert(hash)

