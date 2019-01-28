def replaceDigitWithPrime n
    p = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
	c = 0
	t = 0	
    h = n.to_s.split('').reverse.map!{|x|x.to_i}
    h.length.times do |i|
		t += p[h[i]] * 10**c
        c += 1
    end
    t
end
