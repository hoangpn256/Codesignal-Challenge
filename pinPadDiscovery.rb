def find_element a
    h = {}
    a.find_all { |e| a.count(e) > 1 }
    a.each { |e| h[e] = a.count(e) }
    h.select{|k,v|v==h.max_by { |k, v| v }[1]}.length==1?h.max_by { |k, v| v }[0]:'?'
end
def pinPadDiscovery l
    r = ''
    4.times do |point|
        r +=find_element(l.flat_map{ |i| i[point].split('')})
    end
    r
end
