def replaceDigitWithPrime n
    p = [2,3,5,7,11,13,17,19,23,29]
	t = 0	
    h = n.to_s.split('').reverse
    h.length.times do |i|
		t += p[h[i].to_i] * 10**i
    end
    t
end

