# Caesar Cipher
# Ciphers plaintext using a Caesar cipher
# Will handle non alpha chars by leaving them in place
# (c) 2015 Joshua Klein


puts "Please Enter Phrase to cipher:"
phrase = gets.chomp

puts "Please Enter shift factor:"
shift = gets.chomp



def caesar_cipher(phrase,shift)
	lc_aleph = "abcdefghijklmnopqrstuvwxyz".split(//)
	uc_aleph = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split(//)
	phrase = phrase.split(//)
	$shift = shift
	phrase = phrase.map do |x|
		uc_match = uc_aleph.find_index(x)
		if (uc_match.nil?)
			lc_match = lc_aleph.find_index(x)
			if (!lc_match.nil?)
                lc_aleph[(lc_match.to_i+$shift.to_i) % 26]
            else
                x
			end
		else
			uc_aleph[(uc_match.to_i+$shift.to_i) % 26]
		end
	end
	return phrase.join
end
puts(caesar_cipher(phrase,shift))

